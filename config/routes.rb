Rails.application.routes.draw do
  devise_for :admins
  devise_for :students

  root to: 'welcome#home'
  
  resources :holds
  resources :schools
  resources :borrows
  resources :books
  resources :libraries
  resources :students

end
