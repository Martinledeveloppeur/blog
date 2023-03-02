class ClubcardsController < ApplicationController
  before_action :set_clubcard, only: %i[ show edit update destroy ]

  # GET /clubcards or /clubcards.json
  def index
    @clubcards = Clubcard.all
  end

  # GET /clubcards/1 or /clubcards/1.json
  def show
  end

  # GET /clubcards/new
  def new
    @clubcard = Clubcard.new
  end

  # GET /clubcards/1/edit
  def edit
  end

  # POST /clubcards or /clubcards.json
  def create
    @clubcard = Clubcard.new(clubcard_params)

    respond_to do |format|
      if @clubcard.save
        format.html { redirect_to clubcard_url(@clubcard), notice: "Clubcard was successfully created." }
        format.json { render :show, status: :created, location: @clubcard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clubcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubcards/1 or /clubcards/1.json
  def update
    respond_to do |format|
      if @clubcard.update(clubcard_params)
        format.html { redirect_to clubcard_url(@clubcard), notice: "Clubcard was successfully updated." }
        format.json { render :show, status: :ok, location: @clubcard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clubcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubcards/1 or /clubcards/1.json
  def destroy
    @clubcard.destroy

    respond_to do |format|
      format.html { redirect_to clubcards_url, notice: "Clubcard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clubcard
      @clubcard = Clubcard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clubcard_params
      params.require(:clubcard).permit(:title, :name, :age, :position, :image)
    end
end
