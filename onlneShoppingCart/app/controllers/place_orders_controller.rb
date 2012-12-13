class PlaceOrdersController < ApplicationController
  # GET /place_orders
  # GET /place_orders.json
  def index
    @place_orders = PlaceOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @place_orders }
    end
  end

  # GET /place_orders/1
  # GET /place_orders/1.json
  def show
    @place_order = PlaceOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @place_order }
    end
  end

  # GET /place_orders/new
  # GET /place_orders/new.json
  def new
    @place_order = PlaceOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @place_order }
    end
  end

  # GET /place_orders/1/edit
  def edit
    @place_order = PlaceOrder.find(params[:id])
  end

  # POST /place_orders
  # POST /place_orders.json
  def create
    @place_order = PlaceOrder.new(params[:place_order])

    respond_to do |format|
      if @place_order.save
        format.html { redirect_to @place_order, notice: 'Place order was successfully created.' }
        format.json { render json: @place_order, status: :created, location: @place_order }
      else
        format.html { render action: "new" }
        format.json { render json: @place_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /place_orders/1
  # PUT /place_orders/1.json
  def update
    @place_order = PlaceOrder.find(params[:id])

    respond_to do |format|
      if @place_order.update_attributes(params[:place_order])
        format.html { redirect_to @place_order, notice: 'Place order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @place_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_orders/1
  # DELETE /place_orders/1.json
  def destroy
    @place_order = PlaceOrder.find(params[:id])
    @place_order.destroy

    respond_to do |format|
      format.html { redirect_to place_orders_url }
      format.json { head :no_content }
    end
  end
end
