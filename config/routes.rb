Rails.application.routes.draw do
  root to: 'welcome#home'

  resources :admins, path: 'admin'
  devise_for :admins, path: 'admin', controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations' }
  
  resources :students
  devise_for :students, controllers: { sessions: 'students/sessions', registrations: 'students/registrations' }
  
  resources :schools
  
  resources :libraries
  resources :books
  resources :holds
  resources :borrows

  # Define concerns
  concern :borrowable do
    resources :borrows
  end

  concern :holdable do
    resources :holds
  end
  
  resources :schools do
    resources :students
    resources :libraries
  end
  
  resources :libraries do
    resources :books
  end

  resources :books, only: [:show], concerns: [:borrowable, :holdable]
  resources :students, only: [:show], concerns: [:borrowable, :holdable]

end
