class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
      if @user.save
        flash[:success] = "Welcome to the alpha servise #{@user.username}"
        redirect_to root_path
      else
        render 'new'
      end
  end
  def edit
    @user = User.find(params[:id])
  end

  def show
    
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password,:first_name,:second_name,:city,:passport_number,:phone_number,:date_of_birth)
  end
end
