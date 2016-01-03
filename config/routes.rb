Rails.application.routes.draw do
  devise_for :users
  resources :habits do
    resources :memberships, only: [:new, :create]
  end

  root 'habits#index'

end
