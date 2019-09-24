class Blogger < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :destinations, through: :posts
end
