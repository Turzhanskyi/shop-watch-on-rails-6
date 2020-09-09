# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :product, only: :show
  resources :categories, only: :show
  resources :search, only: :index

  resource :cart, only: %i[destroy show] do
    resources :cart_items, only: %i[destroy create]
  end

  root to: 'main#index'
end
