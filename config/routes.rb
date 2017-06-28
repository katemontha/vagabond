Rails.application.routes.draw do
  devise_for :users
  
  resources :users

  resources :cities do
    resources :posts
  end
<<<<<<< HEAD
=======
  
>>>>>>> d940447a5955bc4c56002744c628c33fc1e72625

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
