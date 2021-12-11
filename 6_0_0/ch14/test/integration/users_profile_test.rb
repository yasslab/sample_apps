require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:michael)
    @other_user = users(:archer)
    @other_user_lana = users(:lana)
    @user.notifications.create!(event: "followed_by", target_id: @other_user.id)
    @user.notifications.create!(event: "followed_by", target_id: @other_user_lana.id)
    @followers_count = @user.followers_count
  end

  test "profile display" do
    get user_path(@user)
    assert_template 'users/show'
    assert_select 'title', full_title(@user.name)
    assert_select 'h1', text: @user.name
    assert_select 'h1>img.gravatar'
    assert_match @user.microposts.count.to_s, response.body
    assert_select 'div.pagination'
    assert_select 'div', text: "#{@other_user_lana.name}さん"
    assert_select 'div', text: "他#{@followers_count}名にフォローされました"
    @user.microposts.paginate(page: 1).each do |micropost|
      assert_match micropost.content, response.body
    end
  end
end
