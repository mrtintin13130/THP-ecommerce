class ChargesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  def new
  	get_cart
    @total = @cart.total
    @pay = @total
  end
  def create
    get_cart
    @amount = 2
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Boutik',
      :currency    => '$'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  private
  def get_cart
    if user_signed_in? && !@cart.nil?
      session[:cart_id] = @cart.id
    end
  end
end