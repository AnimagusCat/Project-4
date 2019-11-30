Rails.application.routes.draw do

  root 'onepage#index'
  get '/outlets/new' => 'outlets#new', as: 'new_outlet'
  post '/outlets' => 'outlets#create'
  devise_for :users
end