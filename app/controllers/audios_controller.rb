class AudiosController < ApplicationController

  def create
    @band = Band.find(params[:band_id])
    @audio = @band.audios.new(audio_params)
    @audio.save!
    redirect_to band_path @band
    flash[:success] = '曲を追加しました'
  end

  def destroy
    @band = Band.find(params[:band_id])
    @audio = Audio.find(params[:id])
    if current_band.id == @band.id
      @audio.destroy
      flash[:success] = '曲を削除しました'
    end
    redirect_to request.referer
  end

  private

  def audio_params
    params.require(:audio).permit(:file, :name)
  end
end
