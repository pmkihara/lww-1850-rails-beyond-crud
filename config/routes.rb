Rails.application.routes.draw do
  resources :restaurants do
    # rotas relacionadas a restaurants
    resources :reviews, only: %i[new create]
    collection do
      # rotas que não levam o id
      # /restaurants/<rota nova>
      get :top # get "restaurants/top", to: "restaurants#top", as: :top_restaurants
    end
    member do
      # rotas que levam o id
      # /restaurants/:id/<rota nova>
      get :chef # get 'restaurants/:id/chef', to: 'restaurants#chef', as: :chef_restaurant
    end
  end
  resources :reviews, only: %i[destroy]
  # root "posts#index"
end
