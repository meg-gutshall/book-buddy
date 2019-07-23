Rails.application.routes.draw do
  root to: 'welcome#home'

  devise_for :admins, path: 'admin', controllers: { passwords: "admins/passwords", registrations: "admins/registrations", sessions: "admins/sessions" }
  resources :admins, path: 'admin', only: [:show]
  
  devise_for :students, controllers: { omniauth: "students/omniauth", passwords: "students/passwords", registrations: "students/registrations", sessions: "students/sessions" }
  resources :students, only: [:show]
  
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
