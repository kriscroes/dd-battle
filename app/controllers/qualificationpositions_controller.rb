class QualificationpositionsController < ApplicationController
  before_action :set_qualificationposition, only: [:show, :edit, :update, :destroy]

  # GET /qualificationpositions
  # GET /qualificationpositions.json
  def index
    @qualificationpositions = Qualificationposition.all
  end

  # GET /qualificationpositions/1
  # GET /qualificationpositions/1.json
  def show
  end

  # GET /qualificationpositions/new
  def new
    @qualificationposition = Qualificationposition.new
  end

  # GET /qualificationpositions/1/edit
  def edit
  end

  # POST /qualificationpositions
  # POST /qualificationpositions.json
  def create
    @qualificationposition = Qualificationposition.new(qualificationposition_params)

    respond_to do |format|
      if @qualificationposition.save
        format.html { redirect_to @qualificationposition, notice: 'Qualificationposition was successfully created.' }
        format.json { render :show, status: :created, location: @qualificationposition }
      else
        format.html { render :new }
        format.json { render json: @qualificationposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qualificationpositions/1
  # PATCH/PUT /qualificationpositions/1.json
  def update
    respond_to do |format|
      if @qualificationposition.update(qualificationposition_params)
        format.html { redirect_to @qualificationposition, notice: 'Qualificationposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @qualificationposition }
      else
        format.html { render :edit }
        format.json { render json: @qualificationposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificationpositions/1
  # DELETE /qualificationpositions/1.json
  def destroy
    @qualificationposition.destroy
    respond_to do |format|
      format.html { redirect_to qualificationpositions_url, notice: 'Qualificationposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualificationposition
      @qualificationposition = Qualificationposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qualificationposition_params
      params.require(:qualificationposition).permit(:name)
    end
end
