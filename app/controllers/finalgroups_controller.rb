class FinalgroupsController < ApplicationController
  before_action :set_finalgroup, only: [:show, :edit, :update, :destroy]

  # GET /finalgroups
  # GET /finalgroups.json
  def index
    @finalgroups = Finalgroup.all
  end

  # GET /finalgroups/1
  # GET /finalgroups/1.json
  def show
  end

  # GET /finalgroups/new
  def new
    @finalgroup = Finalgroup.new
  end

  # GET /finalgroups/1/edit
  def edit
  end

  # POST /finalgroups
  # POST /finalgroups.json
  def create
    @finalgroup = Finalgroup.new(finalgroup_params)

    respond_to do |format|
      if @finalgroup.save
        format.html { redirect_to @finalgroup, notice: 'Finalgroup was successfully created.' }
        format.json { render :show, status: :created, location: @finalgroup }
      else
        format.html { render :new }
        format.json { render json: @finalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finalgroups/1
  # PATCH/PUT /finalgroups/1.json
  def update
    respond_to do |format|
      if @finalgroup.update(finalgroup_params)
        format.html { redirect_to edit_finalgroup_path, notice: 'Finalgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @finalgroup }
      else
        format.html { render :edit }
        format.json { render json: @finalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalgroups/1
  # DELETE /finalgroups/1.json
  def destroy
    @finalgroup.destroy
    respond_to do |format|
      format.html { redirect_to finalgroups_url, notice: 'Finalgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalgroup
      @finalgroup = Finalgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finalgroup_params
      params.require(:finalgroup).permit(:startup_id, :finalposition_id, :iswinner)
    end
end
