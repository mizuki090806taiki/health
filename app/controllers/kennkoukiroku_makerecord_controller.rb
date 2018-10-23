class KennkoukirokuMakerecordController < ApplicationController
  def new
  end
  def create
    @nenndo = params[:kennkoukiroku_makerecord][:'nenndo(1i)']
    flash.now[:alert] = @nenndo
    render :new
    return
  end
end
