class StartupparticipantsController < ApplicationController
  before_action :set_startupparticipant, only: [:show, :edit, :update, :destroy]

  # GET /startupparticipants
  # GET /startupparticipants.json
  def index
    @startupparticipants = Startupparticipant.all
  end

  # GET /startupparticipants/1
  # GET /startupparticipants/1.json
  def show
  end

  # GET /startupparticipants/new
  def new
    @startupparticipant = Startupparticipant.new
  end

  # GET /startupparticipants/1/edit
  def edit
  end

  # POST /startupparticipants
  # POST /startupparticipants.json
  def create
    @startupparticipant = Startupparticipant.new(startupparticipant_params)

    respond_to do |format|
      if @startupparticipant.save
        format.html { redirect_to @startupparticipant, notice: 'Startupparticipant was successfully created.' }
        format.json { render :show, status: :created, location: @startupparticipant }
      else
        format.html { render :new }
        format.json { render json: @startupparticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startupparticipants/1
  # PATCH/PUT /startupparticipants/1.json
  def update
    respond_to do |format|
      if @startupparticipant.update(startupparticipant_params)
        format.html { redirect_to @startupparticipant, notice: 'Startupparticipant was successfully updated.' }
        format.json { render :show, status: :ok, location: @startupparticipant }
      else
        format.html { render :edit }
        format.json { render json: @startupparticipant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startupparticipants/1
  # DELETE /startupparticipants/1.json
  def destroy
    @startupparticipant.destroy
    respond_to do |format|
      format.html { redirect_to startupparticipants_url, notice: 'Startupparticipant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startupparticipant
      @startupparticipant = Startupparticipant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startupparticipant_params
      params.require(:startupparticipant).permit(:startup_id, :participant_id, :role)
    end
end
