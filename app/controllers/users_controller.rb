class UsersController < ApplicationController
  def show
  	@user = current_user
  	@band = Band.find(params[:id])
  	@subscribes = Subscribe.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to users_path(current_user)
    end
  end

  def index
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path(@user)
      flash[:notice]="You have updated user successfully."
    else
      render "edit"
    end
  end
  private
  def user_params
    params.require(:user).permit( :name, :name_kana, :image)
  end
end
