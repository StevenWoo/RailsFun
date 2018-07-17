class EditProductsTimestamp < ActiveRecord::Migration[5.2]
  def up
    remove_column :products, :price
    add_column :products, :price, :decimal, precision: 8, scale: 2
  end
  
  def down
    remove_column :products, :price
    add_column :products, :price, :decimal
  end
end
