Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :posts
    end
  end
end
