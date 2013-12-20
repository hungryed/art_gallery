class Artwork < ActiveRecord::Base
  belongs_to :artist,
    inverse_of: :artworks
  belongs_to :type,
    inverse_of: :artworks
  belongs_to :collection,
    inverse_of: :artworks
  validates_presence_of :name
  validates_presence_of :artist
  validates_numericality_of :cost, greater_than_or_equal_to: 0, allow_nil: true
  validates_presence_of :type


end
