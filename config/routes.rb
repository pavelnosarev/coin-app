Rails.application.routes.draw do
  post "/users" => "users#create"

  get "/index" => "coins#index"
  get "/coins/:id" => "coins#show"
  post "/coins" => "coins#create"
  patch "/coins/:id" => "coins#update"
  delete "/coins/:id" => "coins#destroy"

  post "/sessions" => "sessions#create"

  post "/usercoins" => "usercoins#create"
  get "/usercoins" => "usercoins#index"
  patch "/usercoins/:id" => "usercoins#update"
  get "/usercoins/:id" => "usercoins#show"
  delete "/usercoins/:id" => "usercoins#destroy"

  patch "/users/:id" => "users#update"

  # patch "/admins/:id" => "admin#update"
end
