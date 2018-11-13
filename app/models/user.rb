class User < ApplicationRecord
 has_secure_password validations: true

 validates :name, presence: true

 validates :banngou, presence: true
 validates :banngou, numericality: { greater_than_or_equal_to: 0}
 validates :banngou, uniqueness: true

 validates :kengen, presence: true

 def self.new_remember_token
      SecureRandom.urlsafe_base64
 end

 def self.encrypt(token)
      Digest::SHA256.hexdigest(token.to_s)
 end
end


