class FavoritesController < ApplicationController
  def create
    @tweet_favorite = Favorite.new(user_id: current_user.id, tweet_id: params[:tweet_id])
    @tweet_favorite.save
    redirect_to tweet_path(params[:tweet_id])
  end

  def destroy
    @tweet_favorite = Favorite.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @tweet_favorite.destroy
    redirect_to tweet_path(params[:tweet_id])
  end
end
