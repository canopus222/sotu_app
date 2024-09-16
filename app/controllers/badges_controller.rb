class BadgesController < ApplicationController
  def my_badges
    # @userはユーザー情報を取得するために必要
    @user = current_user
    # ユーザーが取得したバッジを取得するロジック
    @badges = @user.badges  # @userに関連付けられたバッジを取得
  end
end
