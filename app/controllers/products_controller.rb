class ProductsController < ApplicationController
  def show
    @item = Item.find(params['id'])
  end

  def index
    @products = Item.all
  end

  def new
    if (user_signed_in?)
      @products = Item.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    Item.create(title: params["item"]["title"], description: params["item"]["description"], price: params["item"]["price"], image: params["item"]["file"])
    redirect_to products_url
  end
end
