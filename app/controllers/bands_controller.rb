class BandsController < ApplicationController
  before_action :authenticate_band!, only: %i[edit update]

  def index
    @bands = Band.all
    @band = current_band
    @all_ranks = Band.all_ranks
  end

  def show
    @audio = Audio.new
    @receiver_band = Band.find(params[:id])
    @audios = @receiver_band.audios
    @comment = Comment.new
    # コメントをされたバンドの情報を拾い上げる
    @comments = Comment.where(receiver_id: @receiver_band.id)
    # user_idがnilということは、bandが入力したコメントを取得できる
    @band_comments = Comment.where(receiver_id: @receiver_band.id).where(user_id: nil)
    @user_comments = Comment.where(receiver_id: @receiver_band.id).where(band_id: nil)
    @yells = if user_signed_in?
               Yell.where(user_id: current_user.id).where(band_id: @receiver_band.id)
             else
               Yell.where(band_id: @receiver_band.id)
             end
  end

  def edit
    @band = Band.find(params[:id])
    return if current_band == @band

    redirect_to bands_path
  end

  def new; end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to band_path(@band)
      flash[:notice] = '更新しました.'
    else
      render 'edit'
    end
  end

  def create; end

  private

    def band_params
      params.require(:band).permit(:name, :rep_name, :image, :introduction, :link, :sns, :area, :genre, :youtube_url, :tips)
    end
end
