class ProductsController < ApplicationController
  def show
    @item = Item.find(params['id'])
  end

  def index
    @products = Item.all
  end
end
