class ArtistaController < ApplicationController
  before_action :set_artistum, only: %i[ show edit update destroy ]

  # GET /artista or /artista.json
  def index
    @artista = Artistum.all
  end

  # GET /artista/1 or /artista/1.json
  def show
    @integrantes = @artistum.integrantes
    @albums = @artistum.albums
  end

  # Buscar artista pelo id
  def buscar_por_id
    artista_id = params[:artista_id]
    redirect_to "/artista/#{artista_id.to_s}"
  end

  # Buscar albuns pelo artista
  def buscar_albuns_pelo_artista
    artista_id = params[:artista_id]
    redirect_to "/artista/#{artista_id.to_s}/albums"
  end

  # GET /artista/new
  def new
    @artistum = Artistum.new
    @integrante = @artistum.integrantes.build
  end

  # GET /artista/1/edit
  def edit
  end

  # POST /artista or /artista.json
  def create
    @artistum = Artistum.new(artistum_params)

    respond_to do |format|
      if @artistum.save
        if params[:integrantes].present?
          # Itera sobre os parâmetros dos integrantes
          params[:integrantes].each do |integrante_params|
            # Cria um novo Integrante associado ao Artistum
            @artistum.integrantes.create(integrante_params)
          end
        end
        format.html { redirect_to artistum_url(@artistum), notice: "Artistum was successfully created." }
        format.json { render :show, status: :created, location: @artistum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artista/1 or /artista/1.json
  def update
    respond_to do |format|
      if @artistum.update(artistum_params)
        format.html { redirect_to artistum_url(@artistum), notice: "Artistum was successfully updated." }
        format.json { render :show, status: :ok, location: @artistum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artista/1 or /artista/1.json
  def destroy
    @artistum.destroy

    respond_to do |format|
      format.html { redirect_to artista_url, notice: "Artistum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artistum
      @artistum = Artistum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artistum_params
      params.require(:artistum).permit(:nome_artistico, :tipo, integrantes_attributes: [:id, :nome, :cpf, :funcao, :_destroy])
    end
end
