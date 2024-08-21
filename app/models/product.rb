class Product < ApplicationRecord

   mount_uploader :image, ImageUploader

   def self.ransackable_attributes(auth_object = nil)
      ["created_at", "description", "email", "id", "name", "price", "updated_at", "image"]
   end
  
end
