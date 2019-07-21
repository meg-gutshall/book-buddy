Rails.application.routes.draw do
  root to: 'welcome#home'
  
  # devise_for :admins, path: 'admin', controllers: { sessions: 'admins/sessions', registrations: 'admins/registrations' }
  devise_for :students, controllers: { sessions: 'students/sessions', registrations: 'students/registrations' }
  
  resources :schools do
    resources :students
    resources :libraries
  end
  
  resources :students
  
  resources :libraries do
    resources :books
  end

  # Add nested routes
  resources :books, only: [:show], concerns: [:borrowable, :holdable]
  resources :students, only: [:show], concerns: [:borrowable, :holdable]

  # Nested admin routes
  # resources :admin do
  #   resources :schools
  # end

  # Define concerns
  concern :borrowable do
    resources :borrows
  end

  concern :holdable do
    resources :holds
  end

end
