class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :friendships, dependent: :destroy
    has_many :friends, through: :friendships
    has_and_belongs_to_many :conversations, dependent: :destroy
    has_many :messages, dependent: :destroy
    
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
