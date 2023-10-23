class RoommatesController < ApplicationController
  before_action :set_roommate, only: %i[ show edit update destroy ]

  # GET /roommates or /roommates.json
  def index
    @roommates = Roommate.all
  end

  # GET /roommates/1 or /roommates/1.json
  def show
  end

  # GET /roommates/new
  def new
    @roommate = Roommate.new
  end

  # GET /roommates/1/edit
  def edit
  end

  # POST /roommates or /roommates.json
  def create
    @roommate = Roommate.new(roommate_params)

    respond_to do |format|
      if @roommate.save
        format.html { redirect_to roommate_url(@roommate), notice: "Roommate was successfully created." }
        format.json { render :show, status: :created, location: @roommate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @roommate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roommates/1 or /roommates/1.json
  def update
    respond_to do |format|
      if @roommate.update(roommate_params)
        format.html { redirect_to roommate_url(@roommate), notice: "Roommate was successfully updated." }
        format.json { render :show, status: :ok, location: @roommate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @roommate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roommates/1 or /roommates/1.json
  def destroy
    @roommate.destroy

    respond_to do |format|
      format.html { redirect_to roommates_url, notice: "Roommate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roommate
      @roommate = Roommate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roommate_params
      params.require(:roommate).permit(:name, :location, :num_of_nightmares)
    end
end
