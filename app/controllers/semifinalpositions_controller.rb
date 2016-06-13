class SemifinalpositionsController < ApplicationController
  before_action :set_semifinalposition, only: [:show, :edit, :update, :destroy]

  # GET /semifinalpositions
  # GET /semifinalpositions.json
  def index
    @semifinalpositions = Semifinalposition.all
  end

  # GET /semifinalpositions/1
  # GET /semifinalpositions/1.json
  def show
  end

  # GET /semifinalpositions/new
  def new
    @semifinalposition = Semifinalposition.new
  end

  # GET /semifinalpositions/1/edit
  def edit
  end

  # POST /semifinalpositions
  # POST /semifinalpositions.json
  def create
    @semifinalposition = Semifinalposition.new(semifinalposition_params)

    respond_to do |format|
      if @semifinalposition.save
        format.html { redirect_to @semifinalposition, notice: 'Semifinalposition was successfully created.' }
        format.json { render :show, status: :created, location: @semifinalposition }
      else
        format.html { render :new }
        format.json { render json: @semifinalposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /semifinalpositions/1
  # PATCH/PUT /semifinalpositions/1.json
  def update
    respond_to do |format|
      if @semifinalposition.update(semifinalposition_params)
        format.html { redirect_to @semifinalposition, notice: 'Semifinalposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @semifinalposition }
      else
        format.html { render :edit }
        format.json { render json: @semifinalposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semifinalpositions/1
  # DELETE /semifinalpositions/1.json
  def destroy
    @semifinalposition.destroy
    respond_to do |format|
      format.html { redirect_to semifinalpositions_url, notice: 'Semifinalposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semifinalposition
      @semifinalposition = Semifinalposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semifinalposition_params
      params.require(:semifinalposition).permit(:name)
    end
end
