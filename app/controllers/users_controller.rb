class UsersController < ApplicationController
<<<<<<< HEAD
  
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end
=======

    def show
        @user = User.find(params[:id])

    end

    def new
        @user = User.new

    end

>>>>>>> master
    def create
        @user = User.create(user_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save
        session[:user_id] = @user.id
        redirect_to controller: 'sessions', action: 'new'
    end
<<<<<<< HEAD
    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
=======

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

>>>>>>> master
end
