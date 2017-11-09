class CreateProductAttributeValues < ActiveRecord::Migration
  def change
    create_table :product_attribute_values do |t|
      t.references :product, index: true
      t.references :product_attribute, index: true

      t.timestamps
    end
  end
end
