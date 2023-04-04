Rails.application.routes.draw do
  #ルートパス設定完了（4/3 18:00）
  root :to => 'homes#top'
  # resources:books
  # get '/books' => 'books#new'
  post '/books' => 'books#create'
  get '/books' => 'books#index'
  get '/books/:id' => 'books#show', as: 'book'
  get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  patch '/books/:id' => 'books#update', as: 'book_update'
  delete '/books/:id' => 'books#destroy', as: 'book_destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
