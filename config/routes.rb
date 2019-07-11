Rails.application.routes.draw do
  resources :schools
  resources :borrows
  resources :books
  resources :libraries
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'application#home'
  
end
