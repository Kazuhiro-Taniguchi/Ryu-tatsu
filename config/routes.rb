Rails.application.routes.draw do
  root 'tweets#index'
  post  'tweets' => 'tweets#create'
end
