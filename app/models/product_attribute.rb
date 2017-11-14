class ProductAttribute < ActiveRecord::Base
  has_many :product_attribute_values
  has_many :products, through: :product_attribute_values

  # accepts_nested_attributes_for :product_attribute_values

end
