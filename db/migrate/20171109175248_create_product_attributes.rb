class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.string :name

      t.timestamps
    end
  end
end
