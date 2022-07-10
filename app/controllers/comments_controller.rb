class CommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    @comment = tweet.comments.build(comment_params)
    @comment.save
    redirect_to tweet_path(params[:tweet_id])
  end

  # def destroy
  #   @comment = Comment.find(params[:id])
  #   @comment.destroy
  #   render "tweet/show"
  # end

  private

  def comment_params
    params.require(:comment).permit(:comment, :scene_id, :rate).merge(user_id: current_user.id)
  end
end
