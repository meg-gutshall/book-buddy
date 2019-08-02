Rails.application.routes.draw do
  # Home
  root to: 'welcome#home'

  # Devise routes
  devise_for :admins, path: 'admin', controllers: { passwords: "admins/passwords", registrations: "admins/registrations", sessions: "admins/sessions" }
  resources :admins, path: 'admin', only: [:show]
  
  devise_for :students, path: 'students', controllers: { omniauth: "students/omniauth", passwords: "students/passwords", registrations: "students/registrations", sessions: "students/sessions" }
  resources :students, only: [:index, :show]
  
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
  
  # Admin nested resources
  resources :admin do
    resources :schools
    resources :students
    resources :libraries
    resources :books
    resources :borrows
    resources :holds
  end
  
  # Student nested resources
    resources :books
  end

  resources :books, only: [:show], concerns: [:borrowable, :holdable]
  resources :students, only: [:show], concerns: [:borrowable, :holdable]

end
