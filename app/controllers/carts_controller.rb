class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :destroy]

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def edit
  end

  def destroy
  end

  private
 
    def set_cart
      @cart = Cart.find(params[:format])
    end

    def cart_params
      params.require(:cart).permit()
    end
end