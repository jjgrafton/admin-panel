Rails.application.routes.draw do
  devise_for :admins
  root 'users#show'

  resources :students
get '/students' => 'students#index'
  resources :instructors
  get '/instructors' => 'instructors#index'

  resources :courses

  resources :cohorts

  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
