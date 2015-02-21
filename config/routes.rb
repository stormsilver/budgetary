Rails.application.routes.draw do
  devise_for :users
  resources :accounts

  resources :line_items

  resources :paychecks

  resources :buckets

  resources :categories

  resources :months

  # root to: ''
end
