class KaunseringSchedulesController < ApplicationController
  before_action :set_kaunsering_schedule, only: [:show, :edit, :update, :destroy]

  # GET /kaunsering_schedules
  # GET /kaunsering_schedules.json
  def index
    @kaunsering_schedules = KaunseringSchedule.all
  end

  # GET /kaunsering_schedules/1
  # GET /kaunsering_schedules/1.json
  def show
  end

  # GET /kaunsering_schedules/new
  def new
    @kaunsering_schedule = KaunseringSchedule.new
  end

  # GET /kaunsering_schedules/1/edit
  def edit
  end

  # POST /kaunsering_schedules
  # POST /kaunsering_schedules.json
  def create
    @kaunsering_schedule = KaunseringSchedule.new(kaunsering_schedule_params)

    respond_to do |format|
      if @kaunsering_schedule.save
        format.html { redirect_to @kaunsering_schedule, notice: 'Kaunsering schedule was successfully created.' }
        format.json { render :show, status: :created, location: @kaunsering_schedule }
      else
        format.html { render :new }
        format.json { render json: @kaunsering_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kaunsering_schedules/1
  # PATCH/PUT /kaunsering_schedules/1.json
  def update
    respond_to do |format|
      if @kaunsering_schedule.update(kaunsering_schedule_params)
        format.html { redirect_to @kaunsering_schedule, notice: 'Kaunsering schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaunsering_schedule }
      else
        format.html { render :edit }
        format.json { render json: @kaunsering_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kaunsering_schedules/1
  # DELETE /kaunsering_schedules/1.json
  def destroy
    @kaunsering_schedule.destroy
    respond_to do |format|
      format.html { redirect_to kaunsering_schedules_url, notice: 'Kaunsering schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaunsering_schedule
      @kaunsering_schedule = KaunseringSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaunsering_schedule_params
      params.require(:kaunsering_schedule).permit(:yoyakuzikan, :memo)
    end
end
