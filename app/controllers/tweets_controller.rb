class TweetsController < ApplicationController
  def index
    # @tweets = Tweet.all.order("id DESC").includes(:user)
    @tweets = Tweet.all.page(params[:page]).per(10).order("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(name: tweet_params[:name], text: tweet_params[:text], user_id: current_user.id)
  end

  private
  def tweet_params
    params.permit(:name, :avatar, :text)
  end
end
