class InstructorsController < ApplicationController
    #before_action :require_user, only: [:index, :show]
    def index
        @instructors = Instructor.all
        
    end

    def new
        @instructor = Instructor.new
        
    end

    def create
        @instructor = Instructor.new(instructor_params)

       if(@instructor.save)
            redirect_to @instructor
       else 
            render 'new'
       end
    end


    def edit
        @instructor = Instructor.find(params[:id])

    end

    def update
        @instructor = Instructor.find(params[:id])
        
        if(@instructor.update(instructor_params))
            redirect_to @instructor
       else 
            render 'edit'
       end
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy

        redirect_to instructors_path
        
    end

    private def instructor_params
        params.require(:instructor).permit(:first_name, :last_name, :course_id, :cohort_id, :salary)
    end
end

