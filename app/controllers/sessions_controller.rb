class SessionsController < ApplicationController
  
  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/admin/applications'
    else
      flash[:danger] = 'Invalid email or password!'
      redirect_to '/employee_login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/employee_login'
  end


end
