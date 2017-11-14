class AddValueToProductAttributeValues < ActiveRecord::Migration
  def change
    add_column :product_attribute_values, :value, :string
  end
end
