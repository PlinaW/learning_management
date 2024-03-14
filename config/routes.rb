Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root "courses#index"
  resources :courses

end
