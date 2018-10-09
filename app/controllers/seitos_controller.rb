class SeitosController < ApplicationController
  before_action :set_seito, only: [:show, :edit, :update, :destroy]

  # GET /seitos
  # GET /seitos.json
  def index
    @seitos = Seito.all
  end

  # GET /seitos/1
  # GET /seitos/1.json
  def show
  end

  # GET /seitos/new
  def new
    @seito = Seito.new
  end

  # GET /seitos/1/edit
  def edit
  end

  # POST /seitos
  # POST /seitos.json
  def create
    @seito = Seito.new(seito_params)

    respond_to do |format|
      if @seito.save
        format.html { redirect_to @seito, notice: 'Seito was successfully created.' }
        format.json { render :show, status: :created, location: @seito }
      else
        format.html { render :new }
        format.json { render json: @seito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seitos/1
  # PATCH/PUT /seitos/1.json
  def update
    respond_to do |format|
      if @seito.update(seito_params)
        format.html { redirect_to @seito, notice: 'Seito was successfully updated.' }
        format.json { render :show, status: :ok, location: @seito }
      else
        format.html { render :edit }
        format.json { render json: @seito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seitos/1
  # DELETE /seitos/1.json
  def destroy
    @seito.destroy
    respond_to do |format|
      format.html { redirect_to seitos_url, notice: 'Seito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seito
      @seito = Seito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seito_params
      params.require(:seito).permit(:gakunenn_id, :banngou, :seibetu, :simei)
    end
end
