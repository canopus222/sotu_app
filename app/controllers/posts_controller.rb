class PostsController < ApplicationController
  # 次のアクション実行前にset_postsメソッドをよぶ
  before_action :set_post, only: %i[show edit update destroy]
  # ログインできないユーザー
  skip_before_action :require_login, only: %i[index show]

  def new
    @post = Post.new
  end

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def favorites
  end

  def update
  end

  private

  # ユーザーはすべての投稿にアクセスできる
  def set_post
    @post = Post.find(params[:id])
  end
end
