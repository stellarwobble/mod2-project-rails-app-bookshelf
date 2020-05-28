class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])

    end

    def new
        @user = User.new

    end

    def create
        @user = User.create(user_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save
        session[:user_id] = @user.id
        redirect_to controller: 'sessions', action: 'new'
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end
