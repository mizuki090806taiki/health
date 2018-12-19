class SummaryController < ApplicationController
  def result

    @hiduke = Date.today
    if params[:select_date].present?
     @hiduke = Date.parse( params[:select_date])
    else  
     @hiduke = Date.today
    end

    if @hiduke.month >= 4
      nenndo = @hiduke.year
    else
      nenndo = @hiduke.year - 1
    end
    
    @gakunenns = Gakunenn.where("nenndo = ?", nenndo ).order(:gakunenn, :kumi)
    @byouketu = Byouketu.all.order(:id)
    @k = []
   
    @ninzu = Array.new(@gakunenns.count).map{Array.new(@byouketu.count,0)}

       @gakunenns.each_with_index do |g,i|
        @k[i] = Kennkoukiroku.where("hiduke = ? and kesseki = ? and gakunenn_id = ?",@hiduke,true,g.id).count        
          @byouketu.each_with_index do |b,j|
              @ninzu[i][j] = Kennkoukiroku.where("byouketu_id = ? and gakunenn_id = ? and hiduke = ?",b.id,g.id,@hiduke).count
          end
      end
  end
end
