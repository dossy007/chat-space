Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  # root "groups#index" groupにするとcssが反映されなくなる。なんで？？
  root "messages#index"
=======
  root "groups#index"
>>>>>>> master
  resources :users, only: [:index, :edit, :update]
  resources :groups , only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
