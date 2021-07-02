class Product < ApplicationRecord
    include ImageUploader::Attachment(:photos)

    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :price, presence: true

   
    belongs_to :user
end
