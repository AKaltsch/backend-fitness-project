class Post < ApplicationRecord
    has_one :user

    validates :title, presence: true
    validates :body, presence: true
end