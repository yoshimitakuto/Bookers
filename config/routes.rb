Rails.application.routes.draw do
  #ルートパス設定完了（4/3 18:00）
  get '/' => 'homes#top'
  resources:books
  # get '/books' => 'books#new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
