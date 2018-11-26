class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(username: params[:username])
    administrator = Administrator.find_by(username: params[:username])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to root_url, notice: "Logged in!"
    elsif administrator && administrator.authenticate(params[:password])
      session[:administrator_id] = administrator.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Username or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:student_id] = nil
    session[:administrator_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
