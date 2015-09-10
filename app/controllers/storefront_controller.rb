class StorefrontController < ApplicationController
  def index
    if params[:cat_id]
      @cards = Card.find(params[:cat_id])
    else
      @cards = Card.all
    end
  end
end
