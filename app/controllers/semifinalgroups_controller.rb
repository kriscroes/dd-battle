class SemifinalgroupsController < ApplicationController
  before_action :set_semifinalgroup, only: [:show, :edit, :update, :destroy]

  # GET /semifinalgroups
  # GET /semifinalgroups.json
  def index
    @semifinalgroups = Semifinalgroup.all
  end

  # GET /semifinalgroups/1
  # GET /semifinalgroups/1.json
  def show
  end

  # GET /semifinalgroups/new
  def new
    @semifinalgroup = Semifinalgroup.new
  end

  # GET /semifinalgroups/1/edit
  def edit
  end

  # POST /semifinalgroups
  # POST /semifinalgroups.json
  def create
    @semifinalgroup = Semifinalgroup.new(semifinalgroup_params)

    respond_to do |format|
      if @semifinalgroup.save
        format.html { redirect_to @semifinalgroup, notice: 'Semifinalgroup was successfully created.' }
        format.json { render :show, status: :created, location: @semifinalgroup }
      else
        format.html { render :new }
        format.json { render json: @semifinalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semifinalgroups/1
  # PATCH/PUT /semifinalgroups/1.json
  def update
    respond_to do |format|
      if @semifinalgroup.update(semifinalgroup_params)
        format.html { redirect_to edit_semifinalgroup_path, notice: 'Semifinalgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @semifinalgroup }
      else
        format.html { render :edit }
        format.json { render json: @semifinalgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semifinalgroups/1
  # DELETE /semifinalgroups/1.json
  def destroy
    @semifinalgroup.destroy
    respond_to do |format|
      format.html { redirect_to semifinalgroups_url, notice: 'Semifinalgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semifinalgroup
      @semifinalgroup = Semifinalgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semifinalgroup_params
      params.require(:semifinalgroup).permit(:id, :startup_id, :semifinalposition_id)
    end
end
