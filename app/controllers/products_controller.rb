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
              description: params[:description],
              
              )
              @product.save
              render :show
              # happy/sad path
              if @product.save
                render :show
              else
                # error handling      # 
                render json: {errors: @product.errors.full_messages}
              end
          end

            def update
              # if product.price
              #   render :show
              # else 
              #   render json: {error: }
              # end
                @products = Product.find_by(id: params[:id])
                @products.update(
                name: params[:name] || @products.name,
                price: params[:price] || @product.price,
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
