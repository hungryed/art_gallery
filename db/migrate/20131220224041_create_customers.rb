class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :favorite_collection_id, null: false
      t.decimal :amount_spent, default: 0

      t.timestamps
    end
  end
end
