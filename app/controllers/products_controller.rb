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
        # photo_arr =   [params[:product][:photos_1], params[:product][:photos_2], params[:product][:photos_3]].compact

        product = current_user.products.build(product_params)
        p params[:photos] 
        p params
        
        if product.save
            # product.photos = Cloudinary::Uploader.upload(photos: params[:photos])
            if current_user.admin?
                product.update(active: true)
                redirect_to root_path, notice: 'product is live'
            end
            redirect_to root_path, notice: 'product summited for review'
        end
    end

    private 
    def product_params 
        params.require(:product).permit(:name, :location, :price, :description, :photos_one, :photos_two, :photos_three)
    end
end
