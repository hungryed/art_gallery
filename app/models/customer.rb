class Customer < ActiveRecord::Base
  validates_presence_of :amount_spent
  validates_presence_of :last_name
  validates_presence_of :first_name
  validates_presence_of :favorite_collection_id
  has_many :purchases,
    inverse_of: :customer
  has_many :artworks,
    through: :purchases,
    inverse_of: :customer

end
