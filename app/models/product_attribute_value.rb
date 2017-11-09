class ProductAttributeValue < ActiveRecord::Base
  belongs_to :product
  belongs_to :productattribute
end
