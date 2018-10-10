class Kennkoukiroku < ApplicationRecord
 has_many :comments
 belongs_to :byouketu
 belongs_to :tikoku
 belongs_to :gakunenn
 belongs_to :seito
end