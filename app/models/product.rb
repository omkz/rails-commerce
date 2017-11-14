class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
  has_many :product_attribute_values
  has_many :product_attribute, through: :product_attribute_values

  accepts_nested_attributes_for :product_attribute_values

end
