Rails.application.routes.draw do
  # Home
  root to: 'welcome#home'

  # Define concerns
  concern :borrowable do
    resources :borrows
  end

  concern :holdable do
    resources :holds
  end
  
  # Devise routes
  devise_for :admins, path: "admin", only: [:registrations, :sessions], controllers: { registrations: "admins/registrations", sessions: "admins/sessions" }
  devise_for :students, only: [:omniauth, :sessions], controllers: { omniauth: "students/omniauth", sessions: "students/sessions" }
  
  # Admin nested resources
  resources :admins, path: "admin" do
    resources :schools
    devise_for :students, only: [:registrations], controllers: { registrations: "students/registrations" }
    resources :students, only: [:index]
    resources :libraries
    resources :books
  end
  
  # Student nested resources
  resources :schools do
    resources :students
    resources :libraries
    resources :books
  end

  resources :books, only: [:show], concerns: [:borrowable, :holdable]
  resources :students, only: [:show], concerns: [:borrowable, :holdable]

end
