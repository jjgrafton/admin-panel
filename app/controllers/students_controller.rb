class StudentsController < ApplicationController
    #before_action :require_user, only: [:index, :show]
    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)

        if(@student.save)
             redirect_to @student
        else 
             render 'new'
        end
    end

    def edit
        @student = Student.find(params[:id])

    end

    def update
        @student = Student.find(params[:id])
        
        if(@student.update(student_params))
            redirect_to @student
       else 
            render 'edit'
       end
    end


    def show
        @student = Student.find(params[:id])

    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy

        redirect_to student_path
    end

    private 
    def student_params
        params.require(:student).permit(:first_name, :last_name, :d_o_b, :highest_ed, :cohort_names, :cohort_id, :course_names, :course_id)
    end
end
