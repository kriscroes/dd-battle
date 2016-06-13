class FinalpositionsController < ApplicationController
  before_action :set_finalposition, only: [:show, :edit, :update, :destroy]

  # GET /finalpositions
  # GET /finalpositions.json
  def index
    @finalpositions = Finalposition.all
  end

  # GET /finalpositions/1
  # GET /finalpositions/1.json
  def show
  end

  # GET /finalpositions/new
  def new
    @finalposition = Finalposition.new
  end

  # GET /finalpositions/1/edit
  def edit
  end

  # POST /finalpositions
  # POST /finalpositions.json
  def create
    @finalposition = Finalposition.new(finalposition_params)

    respond_to do |format|
      if @finalposition.save
        format.html { redirect_to @finalposition, notice: 'Finalposition was successfully created.' }
        format.json { render :show, status: :created, location: @finalposition }
      else
        format.html { render :new }
        format.json { render json: @finalposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finalpositions/1
  # PATCH/PUT /finalpositions/1.json
  def update
    respond_to do |format|
      if @finalposition.update(finalposition_params)
        format.html { redirect_to @finalposition, notice: 'Finalposition was successfully updated.' }
        format.json { render :show, status: :ok, location: @finalposition }
      else
        format.html { render :edit }
        format.json { render json: @finalposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalpositions/1
  # DELETE /finalpositions/1.json
  def destroy
    @finalposition.destroy
    respond_to do |format|
      format.html { redirect_to finalpositions_url, notice: 'Finalposition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalposition
      @finalposition = Finalposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finalposition_params
      params.require(:finalposition).permit(:name)
    end
end
