Rails.application.routes.draw do

  root 'onepage#index'
  get '/outlets' => 'outlets#index', as: 'outlets'
  get '/outlets/new' => 'outlets#new', as: 'new_outlet'
  get '/outlets/search/:keyword' => 'outlets#search'
  get '/outlets/:id' => 'outlets#show', as: 'outlet'
  get '/outlets/:id/edit' => 'outlets#edit', as: 'edit_outlet'
  patch '/outlets/:id' => 'outlets#update'
  post '/outlets' => 'outlets#create'


  get '/about' => 'onepage#about', as: 'about'
  get '/contact' => 'onepage#contact', as: 'contact'
  devise_for :users
end