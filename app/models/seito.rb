class Seito < ApplicationRecord
 has_many :kennkoukirokus
 belongs_to :gakunenn

 validates :gakunenn_id,presence:true
 validates :banngou,presence:true
 validates :seibetu,presence:true
 validates :simei,presence:true 

 validates :banngou,numericality: { greater_than_or_equal_to: 0 }
end
