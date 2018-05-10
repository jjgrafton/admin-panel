Rails.application.routes.draw do
  root 'users#index'

  resources :students
get '/students' => 'students#index'
  resources :instructors
  get '/instructors' => 'instructors#index'

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
