class AddPurchaseIdToArtwork < ActiveRecord::Migration
  def up
    add_column :artworks, :purchase_id, :integer
  end

  def down
    remove_column :artworks, :purchase_id
  end
end
