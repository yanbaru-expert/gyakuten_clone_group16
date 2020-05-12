class Movie < ApplicationRecord
    validates :title, presence: true
    validates :url, presence: true
    def self.movie_level(page)
        (self.page(page).current_page - 1) * 10
    end
end
