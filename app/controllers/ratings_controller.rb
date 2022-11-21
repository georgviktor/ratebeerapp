class RatingsController < ApplicationController
    def index
        @ratings = Rating.all
        render :index  # renderöin näkymätemplate /app/views/ratings/index.html
    end
end