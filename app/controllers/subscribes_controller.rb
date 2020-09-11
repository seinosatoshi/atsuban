class SubscribesController < ApplicationController
  def index; end

  def create
    @band = Band.find(params[:band_id])
    subscribe = current_user.subscribes.new(band_id: @band.id)
    subscribe.save
    redirect_to request.referer
  end

  def destroy
    @band = Band.find(params[:band_id])
    subscribe = current_user.subscribes.find_by(band_id: @band.id)
    subscribe.destroy
    redirect_to request.referer
  end
end
