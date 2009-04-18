class Order < ActiveRecord::Base
  
  PAYMENT_TYPES = [
    ["Check",           "check"],
    ["Credit Card",     "cc"],
    ["Purchase Order",  "po"]
  ]
  
  has_many :line_items
  
  
end
