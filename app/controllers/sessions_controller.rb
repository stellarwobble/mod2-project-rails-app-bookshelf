class SessionsController < ApplicationController
  before_action :require_logged_in
  skip_before_action :require_logged_in, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    user = user.try(:authenticate, params[:user][:password])
    return redirect_to(controller: 'users', action: 'new') unless user
    session[:user_id] = user.id
    @user = user
    redirect_to profile_path
  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

end
