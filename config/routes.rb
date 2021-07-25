Rails.application.routes.draw do

  resources :comments
  post "bookmarks/:quest_id/create" => "bookmarks#create"
  post "bookmarks/:quest_id/destroy" => "bookmarks#destroy"
  get "users/:id/bookmarks" => "users#bookmarks"

  get "users/index" => "users#index"
  get "signup" => "users#new"
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  post "users/create" => "users#create"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"

  get "users/:id" => "users#show"


  get "chats/index" => "chats#index"

  get "offers/index" => "offers#index"

  get "quests/index" => "quests#index"
  get "quests/new" => "quests#new"
  post "quests/create" => "quests#create"
  get "quests/:id/edit" => "quests#edit"
  post "quests/:id/update" => "quests#update"
  post "quests/:id/destroy" => "quests#destroy"

  get "quests/:id" => "quests#show"


  get "/" => "home#top"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
