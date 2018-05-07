Rails.application.routes.draw do
  root 'users#index'

  resources :students

  resources :instructors

  resources :courses

  resources :cohorts

  get 'signup'  => 'users#new'
  resources :users

  resources :sessions
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
