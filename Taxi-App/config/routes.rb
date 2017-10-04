Rails.application.routes.draw do

  root 'drivers#index'
  get '/welcome', to: 'welcome#index'
  resources :drivers
  resources :taxis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
