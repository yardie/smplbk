class PricedItem < ActiveRecord::Base

  has_many :booking_items
  belongs_to :item_type

end
