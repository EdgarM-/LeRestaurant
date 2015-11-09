class EspectaculosController < ApplicationController
  before_action :set_espectaculo, only: [:show, :edit, :update, :destroy]

  # GET /espectaculos
  # GET /espectaculos.json
  def index
    @espectaculos = Espectaculo.all
  end

  # GET /espectaculos/1
  # GET /espectaculos/1.json
  def show
  end

  # GET /espectaculos/new
  def new
    @espectaculo = Espectaculo.new
  end

  # GET /espectaculos/1/edit
  def edit
  end

  # POST /espectaculos
  # POST /espectaculos.json
  def create
    @espectaculo = Espectaculo.new(espectaculo_params)

    respond_to do |format|
      if @espectaculo.save
        format.html { redirect_to @espectaculo, notice: 'Espectaculo was successfully created.' }
        format.json { render :show, status: :created, location: @espectaculo }
      else
        format.html { render :new }
        format.json { render json: @espectaculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /espectaculos/1
  # PATCH/PUT /espectaculos/1.json
  def update
    respond_to do |format|
      if @espectaculo.update(espectaculo_params)
        format.html { redirect_to @espectaculo, notice: 'Espectaculo was successfully updated.' }
        format.json { render :show, status: :ok, location: @espectaculo }
      else
        format.html { render :edit }
        format.json { render json: @espectaculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /espectaculos/1
  # DELETE /espectaculos/1.json
  def destroy
    @espectaculo.destroy
    respond_to do |format|
      format.html { redirect_to espectaculos_url, notice: 'Espectaculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_espectaculo
      @espectaculo = Espectaculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def espectaculo_params
      params.require(:espectaculo).permit(:nombre, :fecha, :descripcion, :inicio, :fin)
    end
end
