class ProductsController < ApplicationController
  def show
    @item = Item.find(params['id'])
  end

  def index
    @products = Item.all
  end

  def new
    @products = Item.new
  end

  def create
    Item.create(title: params["item"]["title"], description: params["item"]["description"], price: params["item"]["price"], image: params["item"]["file"])
    redirect_to products_url
  end
end
