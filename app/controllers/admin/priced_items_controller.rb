class Admin::PricedItemsController < ApplicationController

  # GET /admin/priced_items
  # GET /admin/priced_items.xml
  def index
    @priced_items = PricedItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @priced_items }
    end
  end

  # GET /admin/priced_items/1
  # GET /admin/priced_items/1.xml
  def show
    @priced_item = PricedItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @priced_item }
    end
  end

  # GET /admin/priced_items/new
  # GET /admin/priced_items/new.xml
  def new
    @priced_item = PricedItem.new
    find_item_types

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @priced_item }
    end
  end

  # GET /admin/priced_items/1/edit
  def edit
    @priced_item = PricedItem.find(params[:id])
    find_item_types
  end

  # POST /admin/priced_items
  # POST /admin/priced_items.xml
  def create
    @priced_item = PricedItem.new(params[:priced_item])
    find_item_types

    respond_to do |format|
      if @priced_item.save
        flash[:notice] = 'PricedItem was successfully created.'
        format.html { redirect_to([:admin, @priced_item]) }
        format.xml  { render :xml => @priced_item, :status => :created, :location => @priced_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @priced_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/priced_items/1
  # PUT /admin/priced_items/1.xml
  def update
    @priced_item = PricedItem.find(params[:id])
    find_item_types

    respond_to do |format|
      if @priced_item.update_attributes(params[:priced_item])
        flash[:notice] = 'PricedItem was successfully updated.'
        format.html { redirect_to([:admin, @priced_item]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @priced_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/priced_items/1
  # DELETE /admin/priced_items/1.xml
  def destroy
    @priced_item = PricedItem.find(params[:id])
    @priced_item.destroy

    respond_to do |format|
      format.html { redirect_to(admin_priced_items_url) }
      format.xml  { head :ok }
    end
  end

end
