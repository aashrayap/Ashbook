class User < ApplicationRecord
  has_secure_password
   validates :password, 
            :length => { :in => 4..24 }, 
            :allow_nil => true

  has_many :posts
  has_many :comments
end
