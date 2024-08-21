class Product < ApplicationRecord

   mount_uploader :image, ImageUploader

   has_many :order_items
   has_many :orders, through: :order_items
   has_many :product_categories
   has_many :categories, through: :product_categories

   validates :name, presence: true
   validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
   validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

   def in_stock?
      stock > 0
   end

   def self.ransackable_attributes(auth_object = nil)
      ["created_at", "description", "email", "id", "name", "price", "updated_at", "image"]
   end
end
