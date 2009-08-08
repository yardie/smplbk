class ItemType < ActiveRecord::Base

  has_many :priced_items
  validates_presence_of :name, :total
  validates_uniqueness_of :name
  validates_numericality_of :total

end

