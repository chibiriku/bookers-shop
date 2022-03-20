Rails.application.routes.draw do

  root to: "homes#top"

  # 顧客用
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  scope module: :public do
    resources :cart_items, only:[:index, :create, :update, :destroy]
    resources :books, only:[:index, :show] do
      resources :book_comments, only: [:create, :destro]
      resources :favorites, only: [:create, :destroy]
    end
    resources :orders, only:[:index,:new,:show,:create]
    resources :addresses, only:[:index,:edit,:update,:destroy,:create]
  end

  delete '/cart_items', to: 'public/cart_items#destroy_all',as: 'all_destroy'
  post '/confirm', to: 'public/orders#confirm',as: 'confirm'
  get '/thanks', to: 'public/orders#thanks',as: 'thanks'

# 管理者用
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  namespace :admins do
    resources :books, only:[:index,:show,:edit,:new,:update,:create]
    resources :genres, only:[:index,:edit,:update,:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
