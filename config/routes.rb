Rails.application.routes.draw do
  devise_for :users
  resources :habits do
    get 'add_user', on: :member
  end

  root 'habits#index'

end
