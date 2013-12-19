class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :artist_id
      t.integer :cost, default: 0
      t.boolean :available, default: true
      t.date :date_of_sale
      t.integer :type_id
      t.integer :collection_id
      t.string :name

      t.timestamps
    end
  end
end
