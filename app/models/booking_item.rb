class BookingItem < ActiveRecord::Base

  belongs_to :booking
  belongs_to :priced_item

end
