Rails.application.routes.draw do

  root 'links#index'
  devise_for :users
  resources :users, only: :show
  resources :links, except: :index

  get "*path", to: "application#render_not_found"
end