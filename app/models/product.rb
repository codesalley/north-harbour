class Product < ApplicationRecord
    

    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :price, presence: true
    has_attachments :photos, maximum: 3, accept: [:jpg, :png, :gif]

    belongs_to :user
end
