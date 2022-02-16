Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews do
    collection do
      get :top
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
