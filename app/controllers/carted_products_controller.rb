class CartedProductsController < ApplicationController
    def index
        @carted_products = CartedProduct.all
        render :index
    end

    def create
        @carted_product = CartedProduct.create(
          product_id: params[:product_id],
          user_id: params[:user_id],
          quantity: params[:quantity],
          order_id: params[:order_id],
          status: params[:status],  
        )
        render :show
    end
    
    def destroy
        @carted_products = CartedProduct.find_by(id: params[:id])
        @carted_products.destroy
        render json: {message: "product removed"}
    end
end
