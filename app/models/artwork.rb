class Artwork < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :artist
  validates_numericality_of :cost, greater_than_or_equal_to: 0
  validates_presence_of :cost
  validates_presence_of :type
  validates_presence_of :collection

end
