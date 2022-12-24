class House < ApplicationRecord
    belongs_to :admin
    has_many :reviews
    has_and_belongs_to_many :users, through: :favorites
    has_many :searches
end
