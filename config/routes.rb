# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  resources :people
  resources :users do
    resources :user_profiles, only: %i[index create] do
      delete :destroy_all, on: :collection
    end
  end
end
