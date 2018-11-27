class HomeController < ApplicationController
  def index
    @products = Item.take(4)
  end

  def private
  end
end
