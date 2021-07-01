class Product < ApplicationRecord
    

    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :price, presence: true

    has_one_attached :photos_one
    has_one_attached :photos_two
    has_one_attached :photos_three
   
    belongs_to :user
end
