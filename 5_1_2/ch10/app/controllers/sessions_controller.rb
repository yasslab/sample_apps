class SessionsController < ApplicationController

  # GET /login
  def new
    #@session = Session.new
  end
  
  # POST /login 
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # Success
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      # Failure
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  # DELETE /logout
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
