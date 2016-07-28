Rails.application.routes.draw do

resources :top
resources :users
resources :rooms do
  collection do
    get :back_room
end
end


root 'users#index'
end
