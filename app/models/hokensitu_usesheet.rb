class HokensituUsesheet < ApplicationRecord
    belongs_to :seito

    validates :seito_id, presence: true 
    validates :raishitu_time, presence:true, uniqueness: false
end
