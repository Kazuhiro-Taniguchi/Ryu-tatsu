Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  root 'home#index'
  get 'tweets' => 'tweets#index'
  get   'tweets/new'  =>  'tweets#new'
  post  'tweets' => 'tweets#create'

  devise_for :users,
  path: '',
  path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
  controllers: {omniauth_callbacks: 'omniauth_callbacks'}
end
