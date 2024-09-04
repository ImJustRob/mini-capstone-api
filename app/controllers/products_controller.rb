class ProductsController < ApplicationController
    def index
        @products = Product.all
        render :index
      end

      def show
        @products = Product.find_by(id: params[:id])
        render :show
      end

        def create
            @products = Product.create(
              name: params[:name],
              price: params[:price],
              image_url: params[:image_url],
              description: params[:description],
            )
            render :show
          end

            def update
                @products = Product.find_by(id: params[:id])
                @products.update(
                name: params[:name] || @products.name,
                price: params[:price] || @product.price,
                image_url: params[:image_url] || @products.image_url,
                description: params[:description] || @products.description

                )
                render :show
            end

                def destroy
                    @products = Product.find_by(id: params[:id])
                    @products.destroy
                    render json: { message: "Product destroyed successfully" }
                end
end
