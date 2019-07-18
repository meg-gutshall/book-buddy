Rails.application.routes.draw do
  # devise_for :admins, path: 'admin', controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations' }
  devise_for :students, controllers: { sessions: 'students/sessions', registrations: 'students/registrations' }

  root to: 'welcome#home'
  
  resources :holds
  resources :schools
  resources :borrows
  resources :books
  resources :libraries
  resources :students

end
