class ProductsController < ApplicationController
    def index
        @products = Product.all
        render :index
      end

      def show
        @product = Product.find_by(id: params[:id])
        render :show
      end

        def create
            @product = Product.create!(
              name: params[:name],
              price: params[:price],
              description: params[:description],
              
              )
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
                @product = Product.find_by(id: params[:id])
                @product.update(
                name: params[:name] || @product.name,
                price: params[:price] || @product.price,
                description: params[:description] || @product.description

                )
                render :show
            end

                def destroy
                    @product = Product.find_by(id: params[:id])
                    @product.destroy
                    render json: { message: "Product destroyed successfully" }
                end
end
