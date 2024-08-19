Rails.application.routes.draw do
  root 'static_pages#top'

  # 新規ユーザー作成ページのルーティング
  get 'users/new', to: 'users#new', as: 'new_user'
  
  # ユーザー作成のためのPOSTリクエストのルーティング
  post 'users', to: 'users#create', as: 'users'

  # ログインログアウト
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  # パスワードリセット
  resources :password_resets, only: %i[new create edit update]

  # Google 認証
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", as: :auth_at_provider

  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # 開発環境でのメール確認
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
