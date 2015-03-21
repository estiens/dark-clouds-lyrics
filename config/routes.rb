Rails.application.routes.draw do
  get 'songs/index'
  root 'songs#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
