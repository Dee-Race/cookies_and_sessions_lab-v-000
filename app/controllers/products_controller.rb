class ProductsController < ApplicationController

  def index
    @cart = Cart.all
  end

  def add
    @item = Item.find(params[:id])
    cart = session[:cart] || []
    cart << @item.id
    session[:cart] cart
  end 


end
