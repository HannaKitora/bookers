Rails.application.routes.draw do
  get '/top' => 'homes#top', as: 'top'
  get 'start' => 'books#start'
  
  #post 'books' => 'books#create'
  #get 'books' => 'books#index', as: 'index_book'
  #get 'books/:id' => 'books#show', as: 'show_book'
  #get 'books/new'
  #get 'book/new' => 'book#new', as: 'new_book'
  #get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  #get 'books/back' => 'index_book'
  #patch 'books/:id' => 'books#update', as: 'update_book'
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
