class FavoritesController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @favorite_posts = current_user.favorite_posts.includes(:user).order(created_at: :desc)
    @favorite_posts = @favorite_posts.page(params[:page]).per(12)
    @posts = @q.result(distinct: true).includes(post: [:line, :station]).order(created_at: :desc).page(params[:page])
  end

  def create
    @post = Post.find(params[:post_id])
    current_user.favorite(@post)
    flash[:notice] = t('favorites.create.success') # フラッシュメッセージの設定
    redirect_to posts_path
  end

  def destroy
    @post = current_user.favorites.find(params[:id]).post
    current_user.unfavorite(@post)
    flash[:notice] = t('favorites.destroy.success') # フラッシュメッセージの設定
    redirect_to posts_path
  end
end
