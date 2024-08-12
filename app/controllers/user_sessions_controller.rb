class UserSessionsController < ApplicationController
# ログインしていなくても new と create アクションにアクセスできる
  skip_before_action :require_login, only: %i[new create]
 
# ログインページのビューを表示  
  def new; end

# ログイン処理を行う create。login メソッドは、ユーザーが入力したemailとpasswordでloginできる
  def create
    @user = login(params[:email], params[:password])

# 認証に成功すると、@user にログインしたユーザーの情報がセット
    if @user
      redirect_to root_path, success: 'ログインしました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

# destroy アクション: ログアウト処理を行い、ホームページにリダイレクト
  def destroy
    logout
    redirect_to root_path, status: :see_other, notice: 'ログアウトしました'
  end
end
