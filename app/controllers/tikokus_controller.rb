class TikokusController < ApplicationController
  before_action :set_tikoku, only: [:show, :edit, :update, :destroy]

  # GET /tikokus
  # GET /tikokus.json
  def index
    @tikokus = Tikoku.all
  end

  # GET /tikokus/1
  # GET /tikokus/1.json
  def show
  end

  # GET /tikokus/new
  def new
    @tikoku = Tikoku.new
  end

  # GET /tikokus/1/edit
  def edit
  end

  # POST /tikokus
  # POST /tikokus.json
  def create
    @tikoku = Tikoku.new(tikoku_params)

    respond_to do |format|
      if @tikoku.save
        format.html { redirect_to @tikoku, notice: "遅刻理由を作成しました" }
        format.json { render :show, status: :created, location: @tikoku }
      else
        format.html { render :new }
        format.json { render json: @tikoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tikokus/1
  # PATCH/PUT /tikokus/1.json
  def update
    respond_to do |format|
      if @tikoku.update(tikoku_params)
        format.html { redirect_to @tikoku, notice: "遅刻理由を更新しました" }
        format.json { render :show, status: :ok, location: @tikoku }
      else
        format.html { render :edit }
        format.json { render json: @tikoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tikokus/1
  # DELETE /tikokus/1.json
  def destroy
    @tikoku.destroy
    respond_to do |format|
      format.html { redirect_to tikokus_url, notice: "遅刻理由を削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tikoku
      @tikoku = Tikoku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tikoku_params
      params.require(:tikoku).permit(:riyuu)
    end
end
