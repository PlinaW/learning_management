Rails.application.routes.draw do
  resources :lessons
  devise_for :admins, skip: [:registration]
  devise_for :users
  root "courses#index"
  resources :courses

  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  get "admin" => "admin#index"

end
