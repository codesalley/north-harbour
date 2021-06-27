class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    has_many :products, class_name: "Product", foreign_key: "user_id"
    has_many :pending,-> { where active: false }, class_name: "Product"
end
