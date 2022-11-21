class Beer < ApplicationRecord
    belongs_to :brewery
    has_many :ratings

    def average_score
        self.ratings.average(:score).to_f.truncate(1)
    end
end
