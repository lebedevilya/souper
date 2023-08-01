# frozen_string_literal: true

Rails.application.routes.draw do
  resources :orders
  mount Motor::Admin => '/admin'

  get '/pages/*page' => 'pages#show'
  root 'pages#show', page: 'home'

  get '/menu/:city', to: 'menu#show', constraints: { table: /\d+/ }
end
