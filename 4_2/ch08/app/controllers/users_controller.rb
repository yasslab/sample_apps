class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    # debugger
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      # success
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      # failure
      render 'new'
    end
  end
  
  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end
end
