Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/menu' => 'home#menu'
  get '/locations' => 'home#locations'
  get '/about' => 'home#about'
  get '/gallery' => 'home#gallery'

  post "/users" => "users#create"

  get '/employee_login' => 'sessions#new'
  post '/employee_login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/admin_panel' => 'admins#index'

  get '/apply/new' => 'applies#new'
  post '/apply' => 'applies#create'

  resources :specials, only: [:new, :create, :update, :edit, :destroy]
  
  namespace :api do 
    namespace :v1 do 
      get '/specials' => 'specials#index'
      get '/specials/:id' => 'specials#show'
      put '/specials/:id' => 'specials#update'
    end
  end

end
