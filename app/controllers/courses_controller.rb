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
        @students = Student.where(course_id: @course.id)
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy

        respond_to do |format|
            format.html { redirect_to root_path }
            format.js { redirect_to root_path}
          end
    end

    private 
    def course_params
        params.require(:course).permit(:name, :total_in_course_hours, :instructor_name, :instructor_id)
    end

end