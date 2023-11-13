Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home" # => root to: "pages#home" || get "/", to: "pages#home"
  # verb "path", to: "controller#action"
  get "/about", to: "pages#about" # => get("/about", to: "pages#about")
  get "/contact", to: "pages#contact"
  get "/profile", to: "pages#profile"
end
