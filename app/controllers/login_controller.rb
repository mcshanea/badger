class LoginController < ApplicationController
  def new
  end
  
  # log the user in
  def create
    if user = User.find_by_login(params[:login])
      # Save the user ID in the session so it can be used in subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    end
  end
  
  def destroy
    # Remove the user id from the session
    session[:current_user_id] = nil
    redirect_to root_url
  end
  
end
