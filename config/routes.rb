Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      get 'switch'
    end
  end

  root 'todo_lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
