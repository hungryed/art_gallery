class Purchase < ActiveRecord::Base
  belongs_to :customer,
    inverse_of: :purchases
  belongs_to :artwork,
    inverse_of: :purchase

  validates_presence_of :date_of_purchase
  validates_presence_of :customer
  validates_presence_of :artwork


end
