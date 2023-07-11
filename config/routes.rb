# frozen_string_literal: true

Rails.application.routes.draw do
  mount Motor::Admin => '/admin'

  get '/pages/*page' => 'pages#show'
  root 'pages#show', page: 'home'
end
