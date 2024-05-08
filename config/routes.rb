Rails.application.routes.draw do
  get 'books/new'
  get 'start', to: 'books#start'
  get 'homes/top' => 'homes#top', as: 'top'
  post 'books' => 'books#create' => 'create_book'
  get 'books' => 'books#index', as: 'index_book'
  get 'books/:id' => 'books#show', as: 'show_book'
  get 'books/edit' => 'books#edit', as: 'edit_book'
  patch 'update_book/:id' => 'books#update', as: 'update_book'
  
  delete 'books/destroy' => 'books#destroy', as: 'destroy_book'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
