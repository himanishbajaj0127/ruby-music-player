Rails.application.routes.draw do
  get 'mood/name:string'
  get 'mood/is_active:boolean'
  resources :moods
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
