Rails.application.routes.draw do
  get 'books/new'
  get 'homes/top' => 'homes#top', as: 'top'
  post 'books' => 'books#create'
  get 'books' => 'books#index' => 'index_book'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/edit' => 'books#edit', as: 'edit_book'
  patch 'book/:id' => 'books#update', as: 'update_book'
  
  delete 'books/destroy' => 'books#destroy', as: 'book_destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
