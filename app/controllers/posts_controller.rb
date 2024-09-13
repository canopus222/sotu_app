class PostsController < ApplicationController
  # 次のアクション実行前にset_postsメソッドをよぶ
  before_action :set_post, only: %i[show edit update destroy]
  # ログインできないユーザー
  skip_before_action :require_login, only: %i[index show]

  def new
    @post = Post.new
    @stations = Station.all
    @prefectures = Prefecture.all
    @lines = Line.all
  end

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  def create
    @post = current_user.posts.build(post_params)
    # 駅名や路線名からIDを抽出する処理
    station_name = params[:post][:station_id].split(" (ID: ").first # 駅名を取得
    line_name = params[:post][:line_id].split(" (ID: ").first # 路線名を取得
  
    # 駅名からIDを取得
    station = Station.find_by(name: station_name)
    line = Line.find_by(name: line_name)
  
    # IDが見つかった場合に設定
    @post.station = station if station
    @post.line = line if line
  
    if @post.save
      redirect_to posts_path, success: t('defaults.flash_message.created', item: Post.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_created', item: Post.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, success: t('defaults.flash_message.deleted', item: Post.model_name.human)
  end

  def favorites
    @favorite_posts = current_user.favorite_posts.includes(:user).order(created_at: :desc)
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, success: t('defaults.flash_message.updated', item: Post.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: Post.model_name.human)
      render :edit, status: :unprocessable_entity
    end
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
      :station_id,         # 駅名のID
      :line_id,            # 路線名のID
      :photo_image_cache   # 画像キャッシュ（画像の再利用のため）
    )
  end
end
