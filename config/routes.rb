Rails.application.routes.draw do
  get 'genres/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :poems, only: [:index, :create]
    resources :genres, only: [:index]
  end
end
