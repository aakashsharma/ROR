class MicroposController < ApplicationController
  # GET /micropos
  # GET /micropos.json
  def index
    @micropos = Micropo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropos }
    end
  end

  # GET /micropos/1
  # GET /micropos/1.json
  def show
    @micropo = Micropo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropo }
    end
  end

  # GET /micropos/new
  # GET /micropos/new.json
  def new
    @micropo = Micropo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropo }
    end
  end

  # GET /micropos/1/edit
  def edit
    @micropo = Micropo.find(params[:id])
  end

  # POST /micropos
  # POST /micropos.json
  def create
    @micropo = Micropo.new(params[:micropo])

    respond_to do |format|
      if @micropo.save
        format.html { redirect_to @micropo, notice: 'Micropo was successfully created.' }
        format.json { render json: @micropo, status: :created, location: @micropo }
      else
        format.html { render action: "new" }
        format.json { render json: @micropo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropos/1
  # PUT /micropos/1.json
  def update
    @micropo = Micropo.find(params[:id])

    respond_to do |format|
      if @micropo.update_attributes(params[:micropo])
        format.html { redirect_to @micropo, notice: 'Micropo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropos/1
  # DELETE /micropos/1.json
  def destroy
    @micropo = Micropo.find(params[:id])
    @micropo.destroy

    respond_to do |format|
      format.html { redirect_to micropos_url }
      format.json { head :no_content }
    end
  end
end
