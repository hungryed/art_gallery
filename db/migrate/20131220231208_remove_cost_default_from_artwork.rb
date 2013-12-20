class RemoveCostDefaultFromArtwork < ActiveRecord::Migration
  def up
    change_column_default :artworks, :cost, nil
  end

  def down
    change_column_default :artworks, :cost, 0
  end
end
