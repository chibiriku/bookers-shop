Rails.application.routes.draw do


  root to: "homes#top"

  # 顧客用
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

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
