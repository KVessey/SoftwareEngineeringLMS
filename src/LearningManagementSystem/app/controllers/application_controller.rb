class ApplicationController < ActionController::Base
  helper_method :current_student

  def current_student
    if session[:student_id]
      @current_student ||= Student.find(session[:student_id])
    else
      @current_student = nil
    end
  end
end
