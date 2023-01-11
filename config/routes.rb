Rails.application.routes.draw do

  devise_for :contributors
  get 'contributors/show'
  resources :books
  resources :contributors
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
  get 'contributors/:id', to: 'contributors#show', as: :contributors_showbooks
  #get 'contributors/sign_out', to: 'devise/sessions#destroy'
 # get 'book', to: 'books#book'
end

