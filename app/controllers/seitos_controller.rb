class SeitosController < ApplicationController
  before_action :set_seito, only: [:show, :edit, :update, :destroy]

  # GET /seitos
  # GET /seitos.json
  def index
    case Date.today.month
     when 4,5,6,7,8,9,10,11,12
      @nenndo = Date.today.year
     when 1,2,3
      @nenndo = Date.today.year-1
    end
    if session[:seito_search_nenndo].present?
      @nenndo = session[:seito_search_nenndo]      
    end
    @gakunenns = Gakunenn.where("nenndo = ?",@nenndo)

      if params[:gakunenn_id].present?
        @gakunenn_id = params[:gakunenn_id]
        session[:select_gakunenn] = params[:gakunenn_id]
      else
        if session[:select_gakunenn].present? 
          @gakunenn_id = session[:select_gakunenn]
        else
          @gakunenn_id = 0
          session[:select_gakunenn] = nil
        end
      end
    @seitos = Seito.where("gakunenn_id = ?",@gakunenn_id)
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
        format.html { redirect_to @seito, notice: "生徒を追加しました" }
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
        format.html { redirect_to @seito, notice: "生徒を更新しました" }
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
      format.html { redirect_to seitos_url, notice: "生徒を削除しました" }
      format.json { head :no_content }
    end
  end

  def search_nenndo
    if params[:seito_gakunenn_select][:'nenndo(1i)'].present?
       session[:seito_search_nenndo] = params[:seito_gakunenn_select][:'nenndo(1i)']
    else
       session[:seito_search_nenndo] = nil
    end
    redirect_to seitos_path
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
