Rails.application.routes.draw do
  root 'home#index'
  get 'tweets' => 'tweets#index'
  get   'tweets/new'  =>  'tweets#new'
  post  'tweets' => 'tweets#create'
end
