require "test_helper"

class PasswordResets < ActionDispatch::IntegrationTest

  def setup
    ActionMailer::Base.deliveries.clear
    @user = users(:michael)
  end
end

class PasswordResetsTest < PasswordResets

  test "password reset path" do
    get new_password_reset_path
    assert_template 'password_resets/new'
    assert_select 'input[name=?]', 'password_reset[email]'
  end

  test "reset path with invalid email" do
    post password_resets_path, params: { password_reset: { email: "" } }
    assert_not flash.empty?
    assert_response :unprocessable_entity
    assert_template 'password_resets/new'
  end
end

class PasswordForm < PasswordResets

  def setup
    super
    post password_resets_path,
         params: { password_reset: { email: @user.email } }
    @actual_user = assigns(:user)
  end
end

class PasswordFormTest < PasswordForm

  test "reset with valid email" do
    assert_not_equal @user.reset_digest, @user.reload.reset_digest
    assert_equal 1, ActionMailer::Base.deliveries.size
    assert_not flash.empty?
    assert_redirected_to root_url
  end

  test "reset with wrong email" do
    get edit_password_reset_path(@actual_user.reset_token, email: "")
    assert_redirected_to root_url
  end

  test "reset with inactive user" do
    @actual_user.toggle!(:activated)
    get edit_password_reset_path(@actual_user.reset_token,
                                 email: @actual_user.email)
    assert_redirected_to root_url
  end

  test "reset with right email but wrong token" do
    get edit_password_reset_path('wrong token', email: @actual_user.email)
    assert_redirected_to root_url
  end

  test "reset with right email and right token" do
    get edit_password_reset_path(@actual_user.reset_token,
                                 email: @actual_user.email)
    assert_template 'password_resets/edit'
    assert_select "input[name=email][type=hidden][value=?]", @actual_user.email
  end
end

class PasswordUpdateTest < PasswordForm

  test "update with invalid password and confirmation" do
    patch password_reset_path(@actual_user.reset_token),
          params: { email: @actual_user.email,
                    user: { password:              "foobaz",
                            password_confirmation: "barquux" } }
    assert_select 'div#error_explanation'
  end

  test "update with empty password" do
    patch password_reset_path(@actual_user.reset_token),
          params: { email: @actual_user.email,
                    user: { password:              "",
                            password_confirmation: "" } }
    assert_select 'div#error_explanation'
  end

  test "update with valid password and confirmation" do
    patch password_reset_path(@actual_user.reset_token),
          params: { email: @actual_user.email,
                    user: { password:              "foobaz",
                            password_confirmation: "foobaz" } }
    assert is_logged_in?
    assert_not flash.empty?
    assert_redirected_to @actual_user
  end
end