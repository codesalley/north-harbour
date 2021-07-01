class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_one_attached  :avatar
    has_many :products, class_name: "Product"
    has_many :pending,-> { where active: false }, class_name: "Product"
end
