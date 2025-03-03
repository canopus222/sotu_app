# リセット機能と外部認証機能の追加
Rails.application.config.sorcery.submodules = [:reset_password, :external]

# Here you can configure each submodule's features.
# GoogleでのOAuth認証を使えるように設定。Googleアカウントでアプリにログイン可能
Rails.application.config.sorcery.configure do |config|
  config.external_providers = [:google]
  config.google.key = Rails.application.credentials.dig(:google, :google_client_id)
  config.google.secret = Rails.application.credentials.dig(:google, :google_client_secret)
  config.google.callback_url = Settings.sorcery[:google_callback_url]
  config.google.user_info_mapping = { email: 'email', name: 'name' }

  # パスワードリセットメール送信の際UserMailerを使用 
  config.user_config do |user|
    user.stretches = 1 if Rails.env.test?
    user.reset_password_mailer = UserMailer
    user.authentications_class = Authentication
  end

  # This line must come after the 'user config' block.
  # Define which model authenticates with sorcery.
  config.user_class = "User"
end
