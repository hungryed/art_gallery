class Artist < ActiveRecord::Base
  belongs_to :style
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :birth_place
  validates_presence_of :style_id
  validates_numericality_of :style_id

end
