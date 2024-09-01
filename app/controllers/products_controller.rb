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
                    name: "keyboard",
                    price: 199,
                    image_url: "https://media.wired.com/photos/6621af2c255c13bb362f5337/master/w_960,c_limit/logitech-pro-x-tkl-keyboard-Reviewer-Photo-SOURCE-Eric-Ravenscraft.jpg",
                )
                @products.save
                render template: "products/show"
            end

end
