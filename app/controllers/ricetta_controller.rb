class RicettaController < ApplicationController
  before_action :set_ricettum, only: %i[ show edit update destroy ]

  # GET /ricetta or /ricetta.json
  def index
    @ricetta = Ricettum.all
  end

  # GET /ricetta/1 or /ricetta/1.json
  def show
  end

  # GET /ricetta/new
  def new
    @ricettum = Ricettum.new
  end

  # GET /ricetta/1/edit
  def edit
  end

  # POST /ricetta or /ricetta.json
  def create
    @ricettum = Ricettum.new(ricettum_params)

    respond_to do |format|
      if @ricettum.save
        format.html { redirect_to ricettum_url(@ricettum), notice: "Ricettum was successfully created." }
        format.json { render :show, status: :created, location: @ricettum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ricettum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ricetta/1 or /ricetta/1.json
  def update
    respond_to do |format|
      if @ricettum.update(ricettum_params)
        format.html { redirect_to ricettum_url(@ricettum), notice: "Ricettum was successfully updated." }
        format.json { render :show, status: :ok, location: @ricettum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ricettum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ricetta/1 or /ricetta/1.json
  def destroy
    @ricettum.destroy!

    respond_to do |format|
      format.html { redirect_to ricetta_url, notice: "Ricettum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ricettum
      @ricettum = Ricettum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ricettum_params
      params.require(:ricettum).permit(:nome, :descrizione, :rails, :generate, :model, :IngredienteRicetta, :ricetta_id, :ingrediente_id, :quantita)
    end
end
