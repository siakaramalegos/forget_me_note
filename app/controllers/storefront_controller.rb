class StorefrontController < ApplicationController
  def index
    @cards = Card.all
  end
end
