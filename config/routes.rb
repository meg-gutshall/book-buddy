Rails.application.routes.draw do
  root to: 'welcome#home'
  
  resources :holds
  resources :schools
  resources :borrows
  resources :books
  resources :libraries
  resources :students
  devise_for :students

end
