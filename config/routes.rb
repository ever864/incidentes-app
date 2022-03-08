Rails.application.routes.draw do
  root to: "home#index"
  
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :incident, only: [:new, :create, :show, :index]
end
