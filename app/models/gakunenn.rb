class Gakunenn < ApplicationRecord
 has_many :seitos
 has_many :kennkoukirokus
 has_many :comments


 validates :nenndo, presence:true
 validates :nenndo, numericality: { greater_than_or_equal_to: 2018 }

 validates :gakunenn, presence:true
 validates :gakunenn, numericality: { greater_than_or_equal_to: 0 }

 validates :kumi, presence:true
 validates :kumi, numericality: { greater_than_or_equal_to: 0 }

 validates :ninnzuu, presence:true
 validates :ninnzuu, numericality: { greater_than_or_equal_to: 0 }


end
