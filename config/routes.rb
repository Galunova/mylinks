Rails.application.routes.draw do

  root 'links#index'
  devise_for :users
  resources :users, only: :show do
    # resources :links, only: :index
    get '/links', to: 'users#links'
  end
  resources :links, except: :index

  get "*path", to: "application#render_not_found"
end