class Workout < ApplicationRecord
    has_many :exercises
    has_many :users, through: :exercises

    validates :name, presence: true
    validates :workout_type, presence: true
end
