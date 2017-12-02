class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @name = user.name
    @tweets = @user.tweets.page(params[:page]).per(5).order("created_at DESC")

  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to action: 'show'
  end

  private
  def update_params
    params.require(:user).permit(:name, :avatar, :country, :genre, :term, :cost)
  end

end
