Rails.application.routes.draw do
  root 'home#index'

  namespace :api, defaults: { format: :json } do
    resources :announcements, only: [:index, :show, :create]
    post 'images', to: 'images#create'
  end

  get '*path', to: 'home#index'
end
