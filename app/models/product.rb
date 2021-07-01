class Product < ApplicationRecord
    

    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :price, presence: true
    
    has_many_attached :photos
   
    belongs_to :user
end
