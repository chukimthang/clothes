class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.integer :status, limit: 5
      t.integer :user_id
      t.integer :receiver_id
      
      t.timestamps
    end
  end
end
