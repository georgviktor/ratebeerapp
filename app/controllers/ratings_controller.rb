class RatingsController < ApplicationController
    def index
        @ratings = Rating.all
        render :index  # renderöin näkymätemplate /app/views/ratings/index.html
    end
    
    def new
        @rating = Rating.new
        @beers = Beer.all
    end

    def create
        Rating.create params.require(:rating).permit(:score, :beer_id)
        # Rating.create beer_id: params[:rating][:beer_id], score: params[:rating][:score]
        redirect_to ratings_path
    end

    def destroy
        rating = Rating.find(params[:id])
        rating.delete
        redirect_to ratings_path
    end

end