Rails.application.routes.draw do



  root 'pictures#index'

  resources :pictures

  resources :users

  resources :sessions, only:[:new, :create, :destroy]

end
