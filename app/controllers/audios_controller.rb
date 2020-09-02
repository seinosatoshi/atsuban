class AudiosController < ApplicationController
  def new
  end

  def create
  	@band = Band.find(params[:band_id])
    @audio = @band.audios.new(audio_params)
    @audio.save!
    redirect_to band_path @band
  end

  def destroy
  	@band = Band.find(params[:band_id])
  	@band.destroy
  	redirect_to request.referer
  end

  private
   def audio_params
   	params.require(:audio).permit( :file, :name)
   end
end
