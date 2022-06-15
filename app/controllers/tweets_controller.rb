class TweetsController < ApplicationController
  before_action :find_item, only: %i[show destroy edit update]
  before_action :authenticate_user!, only: %i[ new create edit destroy update]

  def index
    @tweets = if params[:search].nil?
                Tweet.all
              else
                Tweet.where('item_name LIKE(?)', '%' + params[:search] + '%')
              end
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @favorite = Favorite.new
    @comment = Comment.new
    @comments = @tweet.comments
  end

  def edit; end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to tweet_path
    else
      render :edit
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :shop_name, :item_name, :information, :area, :capacity, :expiry, :keep, :allergy, :quantity,
                                  :category_id, :price, :url, :event_id, search_id: []).merge(user_id: current_user.id)
  end

  def find_item
    @tweet = Tweet.find(params[:id])
  end
end
