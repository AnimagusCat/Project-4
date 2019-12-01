Rails.application.routes.draw do

  root 'onepage#index'
  get '/outlets' => 'outlets#index', as: 'outlets'
  get '/outlets/new' => 'outlets#new', as: 'new_outlet'
  get '/outlets/:id' => 'outlets#show', as: 'outlet'
  post '/outlets' => 'outlets#create'
  devise_for :users
end