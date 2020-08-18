class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    if @art.save
      redirect_to art_path(@art)
    else
      render :new
    end
  end

  private

  def art_params
    params.require(:art).permit(:name, :style, :price, :description, :photo, :artist)
  end
end
