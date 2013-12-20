class Type < ActiveRecord::Base
  validates_presence_of :name
  has_many :artworks,
    inverse_of: :type
end
