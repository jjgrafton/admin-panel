class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)

        if(@course.save)
             redirect_to @course
        else 
             render 'new'
        end
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        
        if(@course.update(course_params))
            redirect_to @course
       else 
            render 'edit'
       end
    end



    def show
        @course = Course.find(params[:id])
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy

        redirect_to courses_path
    end

    private 
    def course_params
        params.require(:course).permit(:name, :total_in_course_hours, :instructor_name)
    end

end