class ProductsController < ApplicationController
    def index
        @products = Product.all
        render template: "products/index"
    end

        def show
            @products = Product.find_by(id: params[:id])
            render template: "products/show"
        end

            def create
                @products = Product.new(
                    name: params[:name],
                    price: params[:price],
                    image_url: params[:image_url]
                )
                @products.save
                render template: "products/show"
            end

end
