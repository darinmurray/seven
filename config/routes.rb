Rails.application.routes.draw do
  resources :expense_categories
  resources :expenses
  resources :incomes
  resources :users
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "products#index"
end
