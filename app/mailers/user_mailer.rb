class UserMailer < ApplicationMailer
  default from: 'no-reply@trainspotter.com'

  def reset_password_email(user)
    @user = User.find(user.id)
    @url  = edit_password_reset_url(@user.reset_password_token, host: 'trainspotter.onrender.com')
    mail(to: user.email, subject: "[Trainspotter]パスワードリセット再設定のご案内")
  end
end
