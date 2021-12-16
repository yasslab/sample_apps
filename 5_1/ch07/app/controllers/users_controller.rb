class UsersController < ApplicationController
  # GET /users/:id
  def show
    @user = User.find(params[:id])
    # => app/views/users/show.html.erb
    # debugger
  end

  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save # => Validation
      # Sucess
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # GET "/users/#{@user.id}" => show
    else
      # Failure
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(
      :name, :email, :password,
      :password_confirmation)
  end
end
