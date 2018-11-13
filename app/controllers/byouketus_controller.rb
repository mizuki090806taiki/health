class ByouketusController < ApplicationController
  before_action :set_byouketu, only: [:show, :edit, :update, :destroy]

  # GET /byouketus
  # GET /byouketus.json
  def index
    @byouketus = Byouketu.all
  end

  # GET /byouketus/1
  # GET /byouketus/1.json
  def show
  end

  # GET /byouketus/new
  def new
    @byouketu = Byouketu.new
  end

  # GET /byouketus/1/edit
  def edit
  end

  # POST /byouketus
  # POST /byouketus.json
  def create
    @byouketu = Byouketu.new(byouketu_params)

    respond_to do |format|
      if @byouketu.save
        format.html { redirect_to @byouketu, notice: "病欠理由を追加しました" }
        format.json { render :show, status: :created, location: @byouketu }
      else
        format.html { render :new }
        format.json { render json: @byouketu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /byouketus/1
  # PATCH/PUT /byouketus/1.json
  def update
    respond_to do |format|
      if @byouketu.update(byouketu_params)
        format.html { redirect_to @byouketu, notice: "病欠理由を更新しました" }
        format.json { render :show, status: :ok, location: @byouketu }
      else
        format.html { render :edit }
        format.json { render json: @byouketu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /byouketus/1
  # DELETE /byouketus/1.json
  def destroy
    @byouketu.destroy
    respond_to do |format|
      format.html { redirect_to byouketus_url, notice: "病欠理由を削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_byouketu
      @byouketu = Byouketu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def byouketu_params
      params.require(:byouketu).permit(:riyuu)
    end
end
