class FavoritesController < ApplicationController

  def create
    post = Post.find(params[:form_id])
    favorite = current_user.favorites.new(post_id: post.id)
    favorite.save
    redirect_to form_path(post)
  end

  def destroy
    post = Post.find(params[:form_id])
    favorite = current_user.favorites.find_by(post_id: post.id)
    favorite.destroy
    redirect_to form_path(post)
  end

end