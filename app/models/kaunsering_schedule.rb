class KaunseringSchedule < ApplicationRecord
 has_many :kaunseringu_yoyakus
    
 validates :yoyakuzikan, presence:true, uniqueness: true    
end
