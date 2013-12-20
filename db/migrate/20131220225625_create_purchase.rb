class CreatePurchase < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :customer, null: false
      t.references :artwork, null: false
      t.datetime :date_of_purchase, null: false

      t.timestamps
    end
  end
end
