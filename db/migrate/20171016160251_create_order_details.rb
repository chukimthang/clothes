class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      
      t.timestamps
    end
  end
end
