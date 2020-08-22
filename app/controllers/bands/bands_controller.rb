class Bands::BandsController < ApplicationController
  def index
    @bands = Band.all
    @band = current_band
  end

  def show
    @band = Band.find(params[:id])
  end

  def edit
    @band = Band.find(params[:id])
  end

  def new
    @band = Band.new
  end

  def update
  end
end
