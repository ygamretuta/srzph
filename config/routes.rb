Rails.application.routes.draw do
  root 'dynamic_pages#catalog'
  get '/catalog' => 'dynamic_pages#catalog'
end
