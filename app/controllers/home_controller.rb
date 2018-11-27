class HomeController < ApplicationController
  def index
    @products = Item.all
  end

  def private
    @products = Item.all
  end
end
