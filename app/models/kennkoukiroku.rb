class Kennkoukiroku < ApplicationRecord
 has_many :comments
 belongs_to :byouketu,optional: true
 belongs_to :tikoku,optional: true
 belongs_to :gakunenn
 belongs_to :seito

 validates :hiduke,presence: true
 validates :gakunenn_id,presence: true
 validates :seito_id,presence: true

end