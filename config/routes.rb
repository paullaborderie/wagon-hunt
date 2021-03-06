Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/team" => "pages#team"
  get "/contact" => "pages#join_us"
  get "/faq" => "pages#faq"
  get "/how-it-works" => "pages#how_it_works"

  #routes CRUD pour products
  resources :products
  resources :upvotes, only: [ :create, :destroy ]
end

