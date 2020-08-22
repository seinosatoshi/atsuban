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
    if current_band != @band
      redirect_to bands_bands_path(current_band)
    end
  end

  def new
    @band = Band.new
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(band_params)
      redirect_to bands_band_path(@band)
      flash[:notice]="You have updated user successfully."
    else
      render "edit"
    end
  end

  def create
  end

  private
  def band_params
    params.require(:band).permit(:name, :image, :introduction)
  end
end