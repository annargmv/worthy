# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'jewelry_pricing', to: 'items#new'
  post 'jewelry_pricing', to: 'items#create'

  get 'same_items/', to: 'similar_items#new'
  post 'same_items', to: 'similar_items#create'

  resources :items, only: %i[new create]
  resource :similar_items, only: 'new'
end
