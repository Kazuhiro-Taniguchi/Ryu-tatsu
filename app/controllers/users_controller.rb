class UsersController < ApplicationController

  def show
    user = User.find(6)
    @name = user.name
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end
