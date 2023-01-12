Rails.application.routes.draw do

  devise_for :contributors #sets up the routes for the Devise gem, which is used for authentication and authorization in the application.
  get 'contributors/show'  #sets up a route for the contributors#show action in the ContributorsController. When a user navigates to the /contributors/show URL, the show action in the ContributorsController will be executed.
  resources :books  #This sets up a set of routes for the Books resource.
  resources :contributors
  

  root to: 'site#home' #sets home page

  get 'about', to: 'site#about'
  get 'contact', to: 'site#contact'
  get 'search', to: 'site#search'
  get 'home', to: 'site#home'
  get 'gbooks', to: 'site#gbooks'
  get 'contributors/:id', to: 'contributors#show', as: :contributors_showbooks
  #get 'contributors/sign_out', to: 'devise/sessions#destroy'
 # get 'book', to: 'books#book'
end

