class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @arts = Art.all.sample(3)
  end

  def profile
    @arts = current_user.purchases.map do |purchase|
      purchase.art
    end

    @arts_sell = current_user.arts
  end
end
