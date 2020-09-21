Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
  root 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index]
end
