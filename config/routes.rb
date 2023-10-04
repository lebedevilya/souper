# frozen_string_literal: true

Rails.application.routes.draw do
  mount Motor::Admin => '/admin'

  get '/pages/*page' => 'pages#show'
  root 'pages#show', page: 'home'

  get '/menu/:city', to: 'menu#show', constraints: { table: /\d+/ }
  post '/menu/:city', to: 'menu#create_order', constraints: { table: /\d+/ }

  resources :orders, except: [:index]

  get '/office', to: 'office#show'
end
