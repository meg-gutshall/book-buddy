Rails.application.routes.draw do
  root to: 'welcome#home'

  resources :schools
  resources :students
  
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
  
  devise_for :admins, path: 'admin', controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations' }
  
  resources :schools do
    resources :students
    devise_for :students, controllers: { sessions: 'students/sessions', registrations: 'students/registrations' }
    resources :libraries
  end
  
  resources :libraries do
    resources :books
  end

  resources :books, only: [:show], concerns: [:borrowable, :holdable]
  resources :students, only: [:show], concerns: [:borrowable, :holdable]

end
