Rails.application.routes.draw do
  devise_for :admins, skip: [:registration]
  devise_for :users
  root "courses#index"
  resources :courses do
    resources :lessons
  end

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  resources :checkouts, only: [:create]

  get "admin" => "admin#index"

  post "/webhook" => "webhooks#stripe"

end
