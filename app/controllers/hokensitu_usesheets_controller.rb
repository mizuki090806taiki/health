class HokensituUsesheetsController < ApplicationController
  before_action :set_hokensitu_usesheet, only: [:show, :edit, :update, :destroy]

  # GET /hokensitu_usesheets
  # GET /hokensitu_usesheets.json
  def index
    @hokensitu_usesheets = HokensituUsesheet.all
  end

  # GET /hokensitu_usesheets/1
  # GET /hokensitu_usesheets/1.json
  def show
  end

  # GET /hokensitu_usesheets/new
  def new
    @hokensitu_usesheet = HokensituUsesheet.new
  end

  # GET /hokensitu_usesheets/1/edit
  def edit
  end

  # POST /hokensitu_usesheets
  # POST /hokensitu_usesheets.json
  def create
    @hokensitu_usesheet = HokensituUsesheet.new(hokensitu_usesheet_params)

    respond_to do |format|
      if @hokensitu_usesheet.save
        format.html { redirect_to @hokensitu_usesheet, notice: 'Hokensitu usesheet was successfully created.' }
        format.json { render :show, status: :created, location: @hokensitu_usesheet }
      else
        format.html { render :new }
        format.json { render json: @hokensitu_usesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hokensitu_usesheets/1
  # PATCH/PUT /hokensitu_usesheets/1.json
  def update
    respond_to do |format|
      if @hokensitu_usesheet.update(hokensitu_usesheet_params)
        format.html { redirect_to @hokensitu_usesheet, notice: 'Hokensitu usesheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @hokensitu_usesheet }
      else
        format.html { render :edit }
        format.json { render json: @hokensitu_usesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hokensitu_usesheets/1
  # DELETE /hokensitu_usesheets/1.json
  def destroy
    @hokensitu_usesheet.destroy
    respond_to do |format|
      format.html { redirect_to hokensitu_usesheets_url, notice: 'Hokensitu usesheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hokensitu_usesheet
      @hokensitu_usesheet = HokensituUsesheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hokensitu_usesheet_params
      params.require(:hokensitu_usesheet).permit(:seito_id, :raishitu_time, :bukatu_flg, :bukatu, :kyoka, :kyokatannin, :naika_riyuu_sonota, :geka_riyuu_sonota, :geka_detail_bui, :geka_detail_time, :geka_detail_place, :geka_detail, :bad_start, :bad_jigen, :taion, :myakuhaku, :ketuatu, :howdo_sonota, :sleep, :wakeup, :good_sleep, :breakfast, :defecation, :worry, :worry_sonota, :go_class, :go_rest_from, :go_rest_to, :go_rest_jigen_from, :go_rest_jigen_to, :go_home, :go_home_tel, :go_hospital, :go_hospital_name, :go_consultation, :go_sonota)
    end
end
