class ApplicationController < ActionController::Base
  helper_method :current_student
  helper_method :current_administrator
  helper_method :authorize_student
  helper_method :authorize_administrator

  def current_student
    if session[:student_id]
      @current_student ||= Student.find(session[:student_id])
    else
      @current_student = nil
    end
  end

  def current_administrator
    if session[:administrator_id]
      @current_administrator ||= Administrator.find(session[:administrator_id])
    else
      @current_administrator = nil
    end
  end

  def authorize
    redirect_to login_path, alert: 'You must be logged in to access this page.' if current_student.nil? && current_administrator.nil?
  end

  def authorize_student
    if current_administrator.nil?
      redirect_to login_path, alert: 'You must be logged in to access this page.' if current_student.nil?
    end
  end

  def authorize_administrator
    redirect_to login_path, alert: 'You must be logged in as an administrator to access this page.' if current_administrator.nil?
  end
end
