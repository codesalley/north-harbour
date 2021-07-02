class ProductsController < ApplicationController
    before_action :authenticate_user!

    def index
      @products = Product.all 
    end
    def new 
        @categories = CATEGORIES
        @condition = CONDITION
        @product = Product.new
    end
    def create 
        @categories = CATEGORIES
        @condition = CONDITION
       
        product = current_user.products.build(product_params)
        
        if product.save
            product.update(category:  @categories[params[:product][:category].to_i][0])
            product.update(condition:  @condition[params[:product][:condition].to_i][0])
        
        
            if current_user.admin?
                product.update(active: true)
                redirect_to root_path, notice: 'product is live'
            end
            redirect_to root_path, notice: 'product summited for review'
        end
    end

    private 
    def product_params 
        params.require(:product).permit(:name, :location, :price, :description, :photo_one, :photo_two, :photo_three, :photo_four)
    end
end
