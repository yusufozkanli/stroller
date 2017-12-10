Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cities, only: [:new, :create, :destroy, :edit, :update] do
    resources :walks, only: [:new, :create, :destroy, :edit, :update] do
    end
  end
  resources :restaurants, only: [:new, :create, :destroy, :edit, :update] do
  end
  resources :museums, only: [:new, :create, :destroy, :edit, :update] do
  end
end
