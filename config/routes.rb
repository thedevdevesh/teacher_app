# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :teachers
  resources :students
  root to: 'students#index' # Redirect to student listing after login
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
