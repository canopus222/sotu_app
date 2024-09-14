class MyPostsController < ApplicationController
  before_action :require_login # Sorceryでログインをチェック

  def index
    # ログイン中のユーザーの投稿を取得
    @q = current_user.posts.ransack(params[:q])
    @posts = @q.result.page(params[:page]).per(10) # ページネーション
  end
end
