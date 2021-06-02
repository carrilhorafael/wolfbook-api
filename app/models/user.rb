class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :likes
    has_many :friendships
    has_many :friends, through: :friendships

    
    has_secure_password
    enum gender:{
        "M": 0,
        "F": 1
    }  
    enum role:{
        "Admin": 1,
        "Moderador": 2,
        "Padrão": 3
    }
    validates :name, :email, :gender, :birthdate, :password, :password_confirmation, presence: true
    validates :email, uniqueness: true
    def age 
        ((Date.today - birthdate.to_date)/365.25).to_i
    end

    
end
