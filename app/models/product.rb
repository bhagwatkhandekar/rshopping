class Product < ApplicationRecord

 def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "email", "id", "name", "price", "updated_at"]
  end
  
end
