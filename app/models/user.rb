class User < ApplicationRecord
    has_secure_password

    has_many :posts

    has_many :exercises
    has_many :workouts, through: :exercises
    has_many :data_entries, through: :exercises  

    validates :username, uniqueness: {case_sensitive: false}, presence: true
    validates :name, presence: true
end
