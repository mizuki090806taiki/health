class GakunennsController < ApplicationController
  before_action :set_gakunenn, only: [:show, :edit, :update, :destroy]

  # GET /gakunenns
  # GET /gakunenns.json
  def index
    @gakunenns = Gakunenn.all
  end

  # GET /gakunenns/1
  # GET /gakunenns/1.json
  def show
  end

  # GET /gakunenns/new
  def new
    @gakunenn = Gakunenn.new
  end

  # GET /gakunenns/1/edit
  def edit
  end

  # POST /gakunenns
  # POST /gakunenns.json
  def create
    @gakunenn = Gakunenn.new(gakunenn_params)

    respond_to do |format|
      if @gakunenn.save
        format.html { redirect_to @gakunenn, notice: 'Gakunenn was successfully created.' }
        format.json { render :show, status: :created, location: @gakunenn }
      else
        format.html { render :new }
        format.json { render json: @gakunenn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gakunenns/1
  # PATCH/PUT /gakunenns/1.json
  def update
    respond_to do |format|
      if @gakunenn.update(gakunenn_params)
        format.html { redirect_to @gakunenn, notice: 'Gakunenn was successfully updated.' }
        format.json { render :show, status: :ok, location: @gakunenn }
      else
        format.html { render :edit }
        format.json { render json: @gakunenn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gakunenns/1
  # DELETE /gakunenns/1.json
  def destroy
    @gakunenn.destroy
    respond_to do |format|
      format.html { redirect_to gakunenns_url, notice: 'Gakunenn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gakunenn
      @gakunenn = Gakunenn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gakunenn_params
      params.require(:gakunenn).permit(:gakunenn, :kumi, :ninnzuu)
    end
end
