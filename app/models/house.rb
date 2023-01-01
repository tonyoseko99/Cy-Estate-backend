class House < ApplicationRecord
    has_many :reviews
    has_and_belongs_to_many :users, through: :favorites
    belongs_to :cart
    has_many :searches
end
