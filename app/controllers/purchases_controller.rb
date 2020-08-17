class PurchasesController < ApplicationController
  def new
    @art = Art.find(params[:art_id])
    @purchase = Purchase.new
  end

  def create
    @art = Art.find(params[:art_id])
    @purchase = Purchase.new(purchases_params)
    @purchase.art = @art
    if @purchase.save
      redirect_to @art
    else
      render :new
    end
  end

  private

  def purchases_params
    params.require(:purchase).permit()
  end
end
