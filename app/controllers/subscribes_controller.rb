class SubscribesController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def create
    @receiver_band = Band.find(params[:band_id])
    subscribe = current_user.subscribes.new(band_id: @receiver_band.id)
    subscribe.save
  end

  def destroy
    @receiver_band = Band.find(params[:band_id])
    subscribe = current_user.subscribes.find_by(band_id: @receiver_band.id)
    subscribe.destroy
  end
end
