class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def hello
    render html: 'hello, world!'
  end

  private

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
