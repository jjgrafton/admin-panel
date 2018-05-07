class UsersController < ApplicationController
    def index
        @user = User.new 
    end

    def new
        @user = User.new 
    end

    def create
        @user = User.new(user_params) 
        if @user.save 
          session[:user_id] = @user.id 
          redirect_to '/' 
        else 
          redirect_to '/signup' 
        end 
    end

    def edit

    end

    def update
        
    end

    def show

    end

    def destroy
        
    end

    private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
