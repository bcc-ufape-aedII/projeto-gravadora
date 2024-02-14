class IntegrantesController < ApplicationController
  before_action :set_integrante, only: %i[ show edit update destroy ]

  # GET /integrantes or /integrantes.json
  def index
    @integrantes = Integrante.all
  end

  # GET /integrantes/1 or /integrantes/1.json
  def show
  end

  # GET /integrantes/new
  def new
    @integrante = Integrante.new
  end

  # GET /integrantes/1/edit
  def edit
  end

  # POST /integrantes or /integrantes.json
  def create
    @integrante = Integrante.new(integrante_params)

    respond_to do |format|
      if @integrante.save
        format.html { redirect_to integrante_url(@integrante), notice: "Integrante was successfully created." }
        format.json { render :show, status: :created, location: @integrante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @integrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /integrantes/1 or /integrantes/1.json
  def update
    respond_to do |format|
      if @integrante.update(integrante_params)
        format.html { redirect_to integrante_url(@integrante), notice: "Integrante was successfully updated." }
        format.json { render :show, status: :ok, location: @integrante }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @integrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrantes/1 or /integrantes/1.json
  def destroy
    @integrante.destroy

    respond_to do |format|
      format.html { redirect_to integrantes_url, notice: "Integrante was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integrante
      @integrante = Integrante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def integrante_params
      params.require(:integrante).permit(:nome, :cpf, :funcao, :artista_id)
    end
end
