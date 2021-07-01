class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_attachment  :avatar, accept: [:jpg, :png, :gif]
    has_many :products, class_name: "Product"
    has_many :pending,-> { where active: false }, class_name: "Product"
end
