class CohortsController < ApplicationController
    #before_action :require_user, only: [:index, :show]
    def index
        @cohorts = Cohort.all
    end

    def new
        @cohort = Cohort.new
    end

    def create
        @cohort = Cohort.new(cohort_params)

        if(@cohort.save)
             redirect_to @cohort
        else 
             render 'new'
        end
    end

    def edit
        @cohort = Cohort.find(params[:id])

    end

    def update
        @cohort = Cohort.find(params[:id])
        
        if(@cohort.update(cohort_params))
            redirect_to @cohort
       else 
            render 'edit'
       end
    end

    def show
        @cohort = Cohort.find(params[:id])
        @students = Student.where(cohort_id: @cohort.id)

    end

    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy

        respond_to do |format|
            format.html { redirect_to root_path }
            format.js { redirect_to root_path}
          end
    end
    
    private 
    def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :cohort_id, :instructor_id, :student_id)
    end
end
