class KennkoukirokuMakerecordController < ApplicationController
  def new
  end
  def create
    nenndo = params[:kennkoukiroku_makerecord][:'nenndo(1i)']
 

    nenndo_start = Date.new(nenndo.to_i,    4,  1)
    nenndo_stop = Date.new(nenndo.to_i + 1, 3, 31)

    gakunenns = Gakunenn.where("nenndo = ?", nenndo)

    gakunenns.each do |gakunenn|
      seitos = Seito.where("gakunenn_id = ?", gakunenn.id)

    seitos.each do |seito|

    (nenndo_start..nenndo_stop).each do |current_date|
      kennkoukiroku = Kennkoukiroku.where("hiduke = ? and seito_id = ?", current_date, seito.id)
    if kennkoukiroku.blank?
      kennkoukiroku = Kennkoukiroku.new
      kennkoukiroku.hiduke = current_date
      kennkoukiroku.gakunenn_id = seito.gakunenn_id
      kennkoukiroku.seito_id = seito.id

    if kennkoukiroku.save
    else
      flash.now[:alert] = "途中でエラーが発生しました！!"
      render :new
      return
    end
   end
  end
 end
end
      flash.now[:notice] = "作成完了しました!!"
      render :new
    end
  end