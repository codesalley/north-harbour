class Product < ApplicationRecord

    include PhotosUploader::Attachment(:photo_one)
    include PhotosUploader::Attachment(:photo_two)
    include PhotosUploader::Attachment(:photo_three)
    include PhotosUploader::Attachment(:photo_four)

    validates :name, presence: true
    validates :description, presence: true
    validates :location, presence: true
    validates :price, presence: true

   
    belongs_to :user
end
