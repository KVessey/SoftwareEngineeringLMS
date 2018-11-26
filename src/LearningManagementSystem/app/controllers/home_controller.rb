class HomeController < ApplicationController
    before_action :authorize, only: [:index, :show, :new, :edit, :create, :destory, :update]
    
    def index
        if current_student
            @student_id = current_student.id
        else
            @student_id = nil
        end
    end
end
