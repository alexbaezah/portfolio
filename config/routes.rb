  Rails.application.routes.draw do
  resources :books, except: [:show]
  get 'book/:id', to: 'books#show', as: 'book_show' 
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
