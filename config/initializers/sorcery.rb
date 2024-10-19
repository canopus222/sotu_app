Rails.application.config.sorcery.submodules = [:reset_password, :external]

# Here you can configure each submodule's features.
Rails.application.config.sorcery.configure do |config|
  config.external_providers = [:google]
  config.google.key = Rails.application.credentials.dig(:google, :google_client_id)
  config.google.secret = Rails.application.credentials.dig(:google, :google_client_secret)

  # 環境によってcallback_urlを設定
  config.google.callback_url = Rails.env.production? ? 
                              "https://trainspotter.onrender.com/oauth/callback?provider=google" : 
                              "http://localhost:3000/oauth/callback?provider=google"

  config.google.user_info_mapping = { email: 'email', name: 'name' }

  config.user_config do |user|
    user.stretches = 1 if Rails.env.test?
    user.reset_password_mailer = UserMailer
    user.authentications_class = Authentication
  end

  # This line must come after the 'user config' block.
  # Define which model authenticates with sorcery.
  config.user_class = "User"
end
