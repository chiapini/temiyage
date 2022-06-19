class TopsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @user = current_user
    favorites = Favorite.where(user_id: current_user.id).pluck(:tweet_id)
    @favorites_list = Tweet.find(favorites)
    @locals = @user.locals
  end
end
