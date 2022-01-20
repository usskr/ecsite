Rails.application.routes.draw do
  devise_for :customers, skip: [:passwords,], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  devise_scope :customer do
    root to: "public/registrations#new"
  end
end
