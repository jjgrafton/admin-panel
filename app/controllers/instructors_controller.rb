class InstructorsController < ApplicationController
    before_action :require_user, only: [:index, :show]
    def index
        @instructors = Instructors.all
    end

    def new
        @instructor = Instructor.new
        
    end

    def create
        @instructor = Instructor.new(post_params)

       if(@instructor.save)
            redirect_to @instructor
       else 
            render 'new'
    end

    def edit
        @instructor = Instructor.find(params[:id])

    end

    def update
        @instructor = Instructor.find(params[:id])
        
        if(@instructor.update(inspector_params))
            redirect_to @instructor
       else 
            render 'edit'
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
        params.require(:instructor).permit(:first_name, :last_name, :course, :cohorts, :salary)
    end
end
