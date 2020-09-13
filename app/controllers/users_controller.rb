class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    # @receiver_band = Band.find(params[:band_id])
    @subscribes = Subscribe.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    redirect_to user_path(current_user) if current_user != @user
  end

  def index; end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
      flash[:notice] = 'You have updated user successfully.'
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end
end
