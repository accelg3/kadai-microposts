class FavoritesController < ApplicationController
  def create
    micropost=Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = "お気に入り追加"
    redirect_to root_url
  end

  def destroy
    micropost=Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success]='お気に入り解除'
    redirect_to root_url
  end
end
