Rails.application.routes.draw do
  get 'users/edit'
  get 'users/create'
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  resources :books
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
