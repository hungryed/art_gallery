class Artwork < ActiveRecord::Base
  belongs_to :artist
  belongs_to :type
  belongs_to :collection
  validates_presence_of :name
  validates_presence_of :artist
  validates_numericality_of :cost, greater_than_or_equal_to: 0, allow_nil: true
  validates_presence_of :type
  validates_presence_of :collection

end
