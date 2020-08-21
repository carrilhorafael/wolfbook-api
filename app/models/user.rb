class User < ApplicationRecord
    has_many :posts
    has_secure_password
    enum gender:{
        "M": 0,
        "F": 1
    }  
    validates :name, :email, :gender, :birthdate, presence: true
    validates :email, uniqueness: true
    
    
end
