class ArtsController < ApplicationController
  def index
    if params[:query].present?
      @arts = Art.search_by_title_and_artist(params[:query])
      @query = params[:query]
    elsif params[:filter].present?
      @arts = Art.filter_by_style_and_price(params[:filter])
      @filter = params[:filter]
    else
      @arts = Art.all
    end
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.user = current_user
    if @art.save
      redirect_to @art
    else
      render :new
    end
  end

  def destroy
    @art.destroy
    redirect_to art_path
  end

  private

  def art_params
    params.require(:art).permit(:name, :style, :price, :description, :photo, :artist)
  end
end
