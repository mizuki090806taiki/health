class HomeController < ApplicationController
  def top

@b = Byouketu.all
@ninzu = []
   @b.each do |b|
    @ninzu[b.id] = Kennkoukiroku.where("byouketu_id = ?",b.id).count
   end 
 
@k = []
@k = Kennkoukiroku.where("hiduke = ? and kesseki = ?",Date.today,true).count
  
     
  end
end
