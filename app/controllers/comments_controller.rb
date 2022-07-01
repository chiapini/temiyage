class CommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    @comment = tweet.comments.build(comment_params)
    @comment.save
    redirect_to tweet_path(params[:tweet_id])
  end

  def edit; end

  def destroy
    @comment.destroy
    redirect_to tweets_path
  end

  def update
    if @comment.update(comment_params)
      redirect_to tweet_path
    else
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :scene_id, :rate).merge(user_id: current_user.id)
  end
end
