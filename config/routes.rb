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

  # all resources are nested in admin namespace example: /admin/courses
  namespace :admin do
    resources :courses do
      resources :lessons
    end
    resources :users
  end

  get "admin" => "admin#index"

  post "/webhook" => "webhooks#stripe"

  patch "/admin/courses/:course_id/lessons/:id/move" => "admin/lessons#move"

end
