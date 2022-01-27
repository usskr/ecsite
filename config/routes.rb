Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords,], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root "items#top"
  end
  
  namespace :admin do
    resources :items
    resources :genres
  end
end
