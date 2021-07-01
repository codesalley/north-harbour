class ProductsController < ApplicationController
    before_action :authenticate_user!

    def index
        
    end
    def new 
        @categories = [['Vehicles', 0], ['home Appliances',1], ['Jobs', 2], ['Mobile Phones', 3], ['Electronics', 4], ['Properties', 5], ['Adverts', 6]]
        @product = Product.new
    end
    def create 
        
        photo_arr =   [params[:product][:photos_1], params[:product][:photos_2], params[:product][:photos_3]].compact
       
        product = current_user.products.build(name: params[:product][:name], condition: params[:product][:condition], location: params[:product][:location], description: params[:product][:description], photos: photo_arr, price: params[:product][:price], category: params[:product][:category])
        p params 
        if product.save! 
            if current_user.admin?
                product.update(active: true)
            end
            redirect_to root_path, notice: 'product summited for review'
        end
    end
end
