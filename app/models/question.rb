class Question < ApplicationRecord
  has_many :answer

    validates :title, presence: true
    validates :detail, presence: true  
end
