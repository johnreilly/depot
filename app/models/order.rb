class Order < ActiveRecord::Base
  
  PAYMENT_TYPES = [
    ["Check",           "check"],
    ["Credit Card",     "cc"],
    ["Purchase Order",  "po"]
  ]
  
  validates_presence_of :name, :address, :email, :pay_type
  validates_inclusion_of :pay_type, :in => PAYMENT_TYPES.map{|disp, value| value}
  
  has_many :line_items
  
  
end
