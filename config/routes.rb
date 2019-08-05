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
  devise_for :students, controllers: { omniauth: "students/omniauth", registrations: "students/registrations" , sessions: "students/sessions" }
  
  # Admin nested resources
  scope :admin do
    devise_for :admins, path: "", controllers: { registrations: "admins/registrations", sessions: "admins/sessions" }
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
