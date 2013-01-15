class PerfomancesController < ApplicationController
  # GET /perfomances
  # GET /perfomances.json
  def index
    @perfomances = Perfomance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perfomances }
    end
  end

  # GET /perfomances/1
  # GET /perfomances/1.json
  def show
    @perfomance = Perfomance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perfomance }
    end
  end

  # GET /perfomances/new
  # GET /perfomances/new.json
  def new
    @perfomance = Perfomance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perfomance }
    end
  end

  # GET /perfomances/1/edit
  def edit
    @perfomance = Perfomance.find(params[:id])
  end

  # POST /perfomances
  # POST /perfomances.json
  def create

    @hall = Hall.find(params[:perfomance][:hall])
    kakoyto_hash = params[:perfomance]
    kakoyto_hash[:hall] = @hall

    @film = Film.find(params[:perfomance][:film])
    kakoyto_hash = params[:perfomance]
    kakoyto_hash[:film] = @film	
     
    @perfomance = Perfomance.new(params[:perfomance])
    respond_to do |format|
      if @perfomance.save
        format.html { redirect_to @perfomance, notice: 'Perfomance was successfully created.' }
        format.json { render json: @perfomance, status: :created, location: @perfomance }
      else
        format.html { render action: "new" }
        format.json { render json: @perfomance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perfomances/1
  # PUT /perfomances/1.json
  def update
    @perfomance = Perfomance.find(params[:id])
    
    @hall = Hall.find(params[:perfomance][:hall])
    kakoyto_hash = params[:perfomance]
    kakoyto_hash[:hall] = @hall

    @film = Film.find(params[:perfomance][:film])
    kakoyto_hash = params[:perfomance]
    kakoyto_hash[:film] = @film	
    
    respond_to do |format|
      if @perfomance.update_attributes(params[:perfomance])
        format.html { redirect_to @perfomance, notice: 'Perfomance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perfomance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfomances/1
  # DELETE /perfomances/1.json
  def destroy
    @perfomance = Perfomance.find(params[:id])
    @perfomance.destroy

    respond_to do |format|
      format.html { redirect_to perfomances_url }
      format.json { head :no_content }
    end
  end
end
