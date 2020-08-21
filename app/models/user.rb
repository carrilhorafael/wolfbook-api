class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_secure_password
    enum gender:{
        "M": 0,
        "F": 1
    }  
    validates :name, :email, :gender, :birthdate, presence: true
    validates :email, uniqueness: true
    def age 
        ((Date.today - birthdate.to_date)/365.25).to_i
    end
end
