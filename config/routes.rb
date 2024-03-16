Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  
  resources :post_images, only: [:new, :create, :index, :show]
  
  get 'homes/about', to: 'homes#about', as: 'about'
end
