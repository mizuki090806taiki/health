class Comment < ApplicationRecord
belongs_to :gakunenn
 
 validates :comment, presence:true
end
