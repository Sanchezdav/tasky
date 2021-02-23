Rails.application.routes.draw do
  unauthenticated :user do
    devise_scope :user do
      root to: 'unauthenticated#index', as: :unauthenticated_root
    end
  end

  authenticated :user do
    root to: 'projects#index', as: :authenticated_root
  end

  devise_for :users

  resources :projects do
    resources :tasks, only: :create
  end
end
