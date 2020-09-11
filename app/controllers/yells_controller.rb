class YellsController < ApplicationController
  def create
    @band = Band.find(params[:band_id])
    yell = current_user.yells.new(band_id: @band.id)
    yell.save
    redirect_to request.referer
    flash[:success] = 'エールを送りました'
  end

  def destroy; end
end
