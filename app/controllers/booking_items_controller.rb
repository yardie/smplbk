class BookingItemsController < ApplicationController

  before_filter :load_booking

  def index
    @booking_items = BookingItem.find(:all)


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @booking_items }
    end
  end

  def show
    @booking_item = BookingItem.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @booking_item }
    end
  end

  def new
    find_priced_items
  end

  def edit
    find_priced_items
  end

  def create
    find_priced_items
  end

  def update
    find_priced_items
  end

  def destroy
  end

  def load_booking
    @booking = Booking.find(params[:booking_id])
  end

end
