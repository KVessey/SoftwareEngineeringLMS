Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :administrators
  resources :grades
  resources :exams
  resources :courses
  resources :enrollments
  resources :students
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root to: 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
