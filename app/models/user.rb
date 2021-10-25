class User < ApplicationRecord
    has_secure_password

    has_many :hikes 
    has_many :squats
    has_many :benchpresses
    has_many :distances
    has_many :miles

    validates :username, uniqueness: {case_sensitive: false}
    # validates :name, presence: true
end
