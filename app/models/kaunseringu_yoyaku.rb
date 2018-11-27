class KaunseringuYoyaku < ApplicationRecord
 belongs_to :kaunsering_schedule
 belongs_to :seito
    
 validates :seito, presence:true, uniqueness: false
end
