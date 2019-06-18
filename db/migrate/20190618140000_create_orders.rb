class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :billing_address_id
      t.integer :shipping_address_id

      t.timestamps
    end
  end
end
