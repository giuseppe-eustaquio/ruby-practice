Rails.application.routes.draw do
  resources :microposts
  resources :users
  root "users#index"
  get "/goodbye", to: "static_pages#goodbye"
end
