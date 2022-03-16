Rails.application.routes.draw do
  root to: "homes#top"
  resources :addresses, only:[:index,:edit,:update,:destroy,:create]
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
