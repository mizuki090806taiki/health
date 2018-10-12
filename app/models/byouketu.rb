class Byouketu < ApplicationRecord
 has_many :kennkoukirokus

 validates :riyuu, presence:true, uniqueness: true


end
