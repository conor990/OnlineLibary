Rails.application.routes.draw do
  devise_for :contributors
  resources :books
  #get 'site/home'
 # get 'site/about'
  #get 'site/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'site#home'

  get 'about', to: 'site#about'
  get 'contact', to: 'site#contact'
  get 'search', to: 'site#search'
  get 'home', to: 'site#home'
  get 'gbooks', to: 'site#gbooks'
  get 'contributors', to: 'site#contributors'
  get 'destroy_contributor_session_path', to 
 # get 'book', to: 'books#book'
end
