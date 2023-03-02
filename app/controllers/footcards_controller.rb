class FootcardsController < ApplicationController
  before_action :set_footcard, only: %i[ show edit update destroy ]

  # GET /footcards or /footcards.json
  def index
    @footcards = Footcard.all
  end

  # GET /footcards/1 or /footcards/1.json
  def show
  end

  # GET /footcards/new
  def new
    @footcard = Footcard.new
  end

  # GET /footcards/1/edit
  def edit
  end

  # POST /footcards or /footcards.json
  def create
    @footcard = Footcard.new(footcard_params)

    respond_to do |format|
      if @footcard.save
        format.html { redirect_to footcard_url(@footcard), notice: "Footcard was successfully created." }
        format.json { render :show, status: :created, location: @footcard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @footcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footcards/1 or /footcards/1.json
  def update
    respond_to do |format|
      if @footcard.update(footcard_params)
        format.html { redirect_to footcard_url(@footcard), notice: "Footcard was successfully updated." }
        format.json { render :show, status: :ok, location: @footcard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @footcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footcards/1 or /footcards/1.json
  def destroy
    @footcard.destroy

    respond_to do |format|
      format.html { redirect_to footcards_url, notice: "Footcard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footcard
      @footcard = Footcard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footcard_params
      params.require(:footcard).permit(:title)
    end
end
