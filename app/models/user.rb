class User < ApplicationRecord
  before_destroy :handle_delete
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
    has_one_attached  :avatar
    has_many :products, class_name: "Product"
    has_many :pending,-> { where active: false }, class_name: "Product"


    
    def handle_delete
      
      Cloudinary::Uploader.destroy(self.photos_one.key, options={}) unless nil
      Cloudinary::Uploader.destroy(self.photos_two.key, options={}) unless nil
      Cloudinary::Uploader.destroy(self.photos_three.key, options={}) unless nil
    end
end
