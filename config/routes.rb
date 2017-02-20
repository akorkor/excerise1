Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :addresses
    resources :posts
    resources :comments
  end

  get "/" => "users#home"
  get "/home" => "users#home"
  get "/signin" => "users#signin"
  get "/signin" => "users#signin"
  get "/signout" => "users#signout"
  get "/new_comment/:post_id" => "comments#new"
  get "/addr_home" => "addresses#index"

end
