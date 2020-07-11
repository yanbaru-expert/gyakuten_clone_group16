class Movie < ApplicationRecord
    has_many :watches, dependent: :destroy
    validates :title, presence: true
    validates :url, presence: true
end
