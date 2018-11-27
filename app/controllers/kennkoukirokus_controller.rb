class KennkoukirokusController < ApplicationController
  before_action :set_kennkoukiroku, only: [:show, :edit, :update, :destroy]

  # GET /kennkoukirokus
  # GET /kennkoukirokus.json
  def index
    @hiduke = Date.today
    if params[:select_date].present?
     @hiduke = Date.parse( params[:select_date])
    else  
     @hiduke = Date.today
    end

    week = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    @youbi = week[@hiduke.wday]
    
    if session[:kennkoukiroku_search_gakunenn] == nil
     @kennkoukirokus = {}
    else
     @kennkoukirokus = Kennkoukiroku.where("gakunenn_id = ? and hiduke = ? ", session[:kennkoukiroku_search_gakunenn],@hiduke)
   end
  end

  # GET /kennkoukirokus/1
  # GET /kennkoukirokus/1.json
  def show
  end

  # GET /kennkoukirokus/new
  def new
    @kennkoukiroku = Kennkoukiroku.new
  end

  # GET /kennkoukirokus/1/edit
  def edit
  end

  # POST /kennkoukirokus
  # POST /kennkoukirokus.json
  def create
    @kennkoukiroku = Kennkoukiroku.new(kennkoukiroku_params)

    respond_to do |format|
      if @kennkoukiroku.save
        format.html { redirect_to @kennkoukiroku, notice: "健康記録を追加しました" }
        format.json { render :show, status: :created, location: @kennkoukiroku }
      else
        format.html { render :new }
        format.json { render json: @kennkoukiroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kennkoukirokus/1
  # PATCH/PUT /kennkoukirokus/1.json
  def update
    respond_to do |format|
      if @kennkoukiroku.update(kennkoukiroku_params)
        format.html { redirect_to  kennkoukirokus_path, notice: "健康記録を更新しました" }
        format.json { render :show, status: :ok, location: @kennkoukiroku }
      else
        format.html { render :edit }
        format.json { render json: @kennkoukiroku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kennkoukirokus/1
  # DELETE /kennkoukirokus/1.json
  def destroy
    @kennkoukiroku.destroy
    respond_to do |format|
      format.html { redirect_to kennkoukirokus_url, notice: "健康記録を削除しました" }
      format.json { head :no_content }
    end
  end

  def search
      if params[:kennkoukiroku_search][:gakunenn].present?
         session[:kennkoukiroku_search_gakunenn] = params[:kennkoukiroku_search][:gakunenn]
      else
         session[:kennkoukiroku_search_gakunenn] = nil
      end
      redirect_to kennkoukirokus_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kennkoukiroku
      @kennkoukiroku = Kennkoukiroku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kennkoukiroku_params
      params.require(:kennkoukiroku).permit(:hiduke, :kesseki, :byouketu_id, :zikoketu, :syuttei, :tikoku_id, :kibiki, :gakunenn_id, :seito_id)
    end
end
