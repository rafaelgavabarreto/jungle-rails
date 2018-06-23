class SessionsController < ApplicationController

  def new
  end

  def create
    #finding the user by email search
    user_login = User.find_by_email(params[:email])
    if user_login && user_login.authenticate(params[:password])
      session[:user_id] = user_login.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    #Reset the variable user_id from the user session and redirect to the login page
    session[:user_id] = nil
    update_cart({})
    redirect_to '/login'
  end

end