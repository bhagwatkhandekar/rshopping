class ProductsController < ApplicationController
  def product_listing
    @products = Product.all

    respond_to do |format|
      format.html 
      format.json { render json: @products } # Optional: API response
    end
  end
end
