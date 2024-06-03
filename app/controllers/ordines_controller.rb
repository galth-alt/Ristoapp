class OrdinesController < ApplicationController
  before_action :set_ordine, only: %i[ show edit update destroy ]

  # GET /ordines or /ordines.json
  def index
    @ordines = Ordine.all
  end

  # GET /ordines/1 or /ordines/1.json
  def show
  end

  # GET /ordines/new
  def new
    @ordine = Ordine.new
  end

  # GET /ordines/1/edit
  def edit
  end

  # POST /ordines or /ordines.json
  def create
    @ordine = Ordine.new(ordine_params)

    respond_to do |format|
      if @ordine.save
        format.html { redirect_to ordine_url(@ordine), notice: "Ordine was successfully created." }
        format.json { render :show, status: :created, location: @ordine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ordine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordines/1 or /ordines/1.json
  def update
    respond_to do |format|
      if @ordine.update(ordine_params)
        format.html { redirect_to ordine_url(@ordine), notice: "Ordine was successfully updated." }
        format.json { render :show, status: :ok, location: @ordine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ordine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordines/1 or /ordines/1.json
  def destroy
    @ordine.destroy!

    respond_to do |format|
      format.html { redirect_to ordines_url, notice: "Ordine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordine
      @ordine = Ordine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordine_params
      params.require(:ordine).permit(:cliente_id, :rails, :generate, :model, :RicettaOrdine, :ordine_id, :ricetta_id, :quantita)
    end
end
