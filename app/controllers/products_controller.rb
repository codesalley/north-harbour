class ProductsController < ApplicationController
    before_action :authenticate_user!

    def index
        
    end
    def new 
        @categories = CATEGORIES
        @condition = CONDITION
        @product = Product.new
    end
    def create 
        @categories = CATEGORIES
        @condition = CONDITION
        # photo_arr =   [params[:product][:photos_1], params[:product][:photos_2], params[:product][:photos_3]].compact

        product = Product.new(name: params[:product][:name], condition: @condition [params[:product][:condition].to_i ][0], location: params[:product][:location], description: params[:product][:description], photos: params[:photos], price: params[:product][:price].to_s, category:  @categories[params[:product][:category].to_i][0], user_id: current_user.id)
        p product 
        
        if product.save
            if current_user.admin?
                product.update(active: true)
                redirect_to root_path, notice: 'product is live'
            end
            redirect_to root_path, notice: 'product summited for review'
        end
    end
end
