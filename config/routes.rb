Rails.application.routes.draw do
  resources :songs
  root 'songs#index'
  get "/show_song" => 'songs#show_song', as: 'show_song'
  get "/mobile-index" => 'mobile#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
