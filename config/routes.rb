Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        mount_devise_token_auth_for 'User', at: 'auth'
          resources :topics
          resources :links
          resources :comments
      end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
