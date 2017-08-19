Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/menu' => 'home#menu'
  get '/locations' => 'home#locations'
  get '/about' => 'home#about'
  get '/gallery' => 'home#gallery'

  # get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/employee_login" => "sessions#new"
  post "/employee_login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "admin_panel" => 'admins#index'

  # resources :photos, only: [:new, :create, :index, :destroy]
end
