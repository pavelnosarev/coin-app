Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/coins" => "coins#index"
  get "/coins/:id" => "coins#show"
  post "/coins" => "coins#create"
  patch "/coins/:id" => "coins#update"
  delete "/coins/:id" => "coins#destroy"

  post "/sessions" => "sessions#create"
end
