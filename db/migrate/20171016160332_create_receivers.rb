class CreateReceivers < ActiveRecord::Migration[5.1]
  def change
    create_table :receivers do |t|
      t.string :fullname
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
