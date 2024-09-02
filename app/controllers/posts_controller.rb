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
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, success: t('defaults.flash_message.created', item: Post.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Post.model_name.human)
      render :new, status: :unprocessable_entity
    end
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

  def post_params
    params.require(:post).permit(
      :photo_image,        # 投稿の画像ファイル
      :prefecture_id,      # 都道府県のID
      :comment,            # 投稿に対するコメント
      :location,           # 撮影場所
      :shooting_time,      # 撮影時間
      :station_id,         # 駅名のID
      :line_id,            # 路線名のID
      :photo_image_cache   # 画像キャッシュ（画像の再利用のため）
    )
  end
end
