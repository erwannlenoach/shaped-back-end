class Item < ApplicationRecord
    belongs_to :user
    has_many :carts_items
    has_many :carts, through: :carts_items
    validates :description, length: {maximum: 500}
    validates :title, length: {maximum: 50}


end
