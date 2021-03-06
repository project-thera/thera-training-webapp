class UsersController < ApplicationController
  
  def new
    render html: '', layout: true
  end

  def create
    @user = User.find_by(user_params)

    @user = User.create(user_params.merge({ last_session_id: session[:session_id] })) if @user.nil?

    if @user.valid?
      sign_in(@user)

      redirect_to training_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end