class UsersController < ApplicationController
  def index
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save 
      redirect_to 
    else
      render "new"
    end
  end
  private
    def users_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

