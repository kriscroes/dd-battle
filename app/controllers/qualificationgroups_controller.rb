class QualificationgroupsController < ApplicationController
  before_action :set_qualificationgroup, only: [:show, :edit, :update, :destroy]

  # GET /qualificationgroups
  # GET /qualificationgroups.json
  def index
    @qualificationgroups = Qualificationgroup.all
  end

  # GET /qualificationgroups/1
  # GET /qualificationgroups/1.json
  def show
  end

  # GET /qualificationgroups/new
  def new
    @qualificationgroup = Qualificationgroup.new
  end

  # GET /qualificationgroups/1/edit
  def edit
  end

  # POST /qualificationgroups
  # POST /qualificationgroups.json
  def create
    @qualificationgroup = Qualificationgroup.new(qualificationgroup_params)

    respond_to do |format|
      if @qualificationgroup.save
        format.html { redirect_to @qualificationgroup, notice: 'Qualificationgroup was successfully created.' }
        format.json { render :show, status: :created, location: @qualificationgroup }
      else
        format.html { render :new }
        format.json { render json: @qualificationgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualificationgroups/1
  # PATCH/PUT /qualificationgroups/1.json
  def update
    respond_to do |format|
      if @qualificationgroup.update(qualificationgroup_params)
        format.html { redirect_to edit_qualificationgroup_path, notice: 'Qualificationgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualificationgroup }
      else
        format.html { render :edit }
        format.json { render json: @qualificationgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificationgroups/1
  # DELETE /qualificationgroups/1.json
  def destroy
    @qualificationgroup.destroy
    respond_to do |format|
      format.html { redirect_to qualificationgroups_url, notice: 'Qualificationgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualificationgroup
      @qualificationgroup = Qualificationgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualificationgroup_params
      params.require(:qualificationgroup).permit(:startup_id, :qualificationposition_id)
    end
end
