class BandsController < ApplicationController
  def index
    @bands = Band.all
    @band = current_band
  end

  def show
    @receiver_band = Band.find(params[:id])
    @comment = Comment.new
    #コメントをされたバンドの情報を拾い上げる
    @comments = Comment.where(receiver_id:@receiver_band.id)
    #user_idがnilということは、bandが入力したコメントを取得できる
    @band_comments = Comment.where(receiver_id:@receiver_band.id).where(user_id:nil)
    @user_comments = Comment.where(receiver_id:@receiver_band.id).where(band_id:nil)
  end

  def edit
    @band = Band.find(params[:id])
    if current_band != @band
      redirect_to bands_path(current_band)
    end
  end

  def new
    @band = Band.new
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to band_path(@band)
      flash[:notice]="You have updated user successfully."
    else
      render "edit"
    end
  end

  def create
  end

  private
  def band_params
    params.require(:band).permit( :name, :name_kana, :rep_name, :rep_name_kana, :image, :introduction, :link, :sns, :area, :genre, :youtube_url, :tips)
  end
end