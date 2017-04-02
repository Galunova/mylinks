Rails.application.routes.draw do

  root 'links#index'
  resources :links, except: :index

  get "*path", to: "application#render_not_found"
end