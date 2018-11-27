class KaunseringuYoyakusController < ApplicationController
  before_action :set_kaunseringu_yoyaku, only: [:show, :edit, :update, :destroy]

  # GET /kaunseringu_yoyakus
  # GET /kaunseringu_yoyakus.json
  def index
    @kaunseringu_yoyakus = KaunseringuYoyaku.all
  end

  # GET /kaunseringu_yoyakus/1
  # GET /kaunseringu_yoyakus/1.json
  def show
  end

  # GET /kaunseringu_yoyakus/new
  def new
    @kaunseringu_yoyaku = KaunseringuYoyaku.new
  end

  # GET /kaunseringu_yoyakus/1/edit
  def edit
  end

  # POST /kaunseringu_yoyakus
  # POST /kaunseringu_yoyakus.json
  def create
    @kaunseringu_yoyaku = KaunseringuYoyaku.new(kaunseringu_yoyaku_params)

    respond_to do |format|
      if @kaunseringu_yoyaku.save
        format.html { redirect_to @kaunseringu_yoyaku, notice: 'Kaunseringu yoyaku was successfully created.' }
        format.json { render :show, status: :created, location: @kaunseringu_yoyaku }
      else
        format.html { render :new }
        format.json { render json: @kaunseringu_yoyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kaunseringu_yoyakus/1
  # PATCH/PUT /kaunseringu_yoyakus/1.json
  def update
    respond_to do |format|
      if @kaunseringu_yoyaku.update(kaunseringu_yoyaku_params)
        format.html { redirect_to @kaunseringu_yoyaku, notice: 'Kaunseringu yoyaku was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaunseringu_yoyaku }
      else
        format.html { render :edit }
        format.json { render json: @kaunseringu_yoyaku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kaunseringu_yoyakus/1
  # DELETE /kaunseringu_yoyakus/1.json
  def destroy
    @kaunseringu_yoyaku.destroy
    respond_to do |format|
      format.html { redirect_to kaunseringu_yoyakus_url, notice: 'Kaunseringu yoyaku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaunseringu_yoyaku
      @kaunseringu_yoyaku = KaunseringuYoyaku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaunseringu_yoyaku_params
      params.require(:kaunseringu_yoyaku).permit(:kaunsering_schedule_id, :seito_id, :memo, :result)
    end
end
