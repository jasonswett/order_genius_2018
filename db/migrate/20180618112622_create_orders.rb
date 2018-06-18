class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :restaurant, foreign_key: true
      t.string :customer_email

      t.timestamps
    end
  end
end
