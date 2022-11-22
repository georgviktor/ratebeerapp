class Beer < ApplicationRecord
    include RatingAverage
    
    belongs_to :brewery
    has_many :ratings, dependent: :destroy

    def to_s
        "#{self.name} #{Brewery.find_by(id:self.brewery_id).name}"
    end

end
