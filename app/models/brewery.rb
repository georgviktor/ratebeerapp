class Brewery < ApplicationRecord
    has_many :beers, dependent: :destroy
    has_many :ratings, through: :beers


    def average_rating
        self.ratings.average(:score).to_f.truncate(1)
    end


end
