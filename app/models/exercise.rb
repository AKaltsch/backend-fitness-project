class Exercise < ApplicationRecord
    belongs_to :user 
    belongs_to :workout 

    has_many :data_entries
end
