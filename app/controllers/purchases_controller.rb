class PurchasesController < ApplicationController
  before_action :set_art, only: [:new, :create]
  before_action :set_tasks, only: [:new, :create]
  
  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchases_params)
    @purchase.art = @art
    @purchase.user = current_user
    if @purchase.save!
      redirect_to myprofile_path
    else
      render :new
    end
  end

  private

  def purchases_params
    params.require(:purchase).permit()
  end

  def set_art
    @art = Art.find(params[:art_id])
  end
end
