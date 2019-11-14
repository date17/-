Rails.application.routes.draw do
  # rootだった時に飛ぶアクション
  root to: 'famimain#index'

  # 見る側
  get 'famimain/index'
  get 'famimain', to: 'famimain#index'

  get 'famimain/genre/:genre_id', to: 'famimain#genre'

  get 'famimain/show/:id', to: 'famimain#show'

  get 'famimain/timelimit'
  #商品作成
  get 'itemcreates', to: 'itemcreates#index'
  get 'itemcreates/index'

  get 'itemcreates/add'
  post 'itemcreates/add'

  get 'itemcreates/edit/:id', to: 'itemcreates#edit'
  patch 'itemcreates/edit/:id', to: 'itemcreates#edit'

  get 'itemcreates/delete/:id', to: 'itemcreates#delete'

  #廃棄
  get 'discards/index'
  get 'discards', to: 'discards#index'


  get 'discards/add/:id', to: 'discards#add'
  post 'discards/add/:id', to: 'discards#add'
  get 'discards/add'
  post 'discards/add'


  get 'discards/edit/:id', to: 'discards#edit'
  patch 'discards/edit/:id', to: 'discards#edit'

  get 'discards/delete/:id', to: 'discards#delete'

  #ジャンル
  get 'genres/index'
  get 'genres', to: 'genres#index'

  get 'genres/add'
  post 'genres/add', to: 'genres#add'

  get 'genres/edit/:id', to: 'genres#edit'
  patch 'genres/edit/:id', to: 'genres#edit'

  get 'genres/delete/:id', to: 'genres#delete'

  #商品情報
  get 'iteminfos/index'
  get 'iteminfos', to: 'iteminfos#index'

  get 'iteminfos/show'

  get 'iteminfos/add'
  post 'iteminfos/add'

  get 'iteminfos/edit/:id', to: 'iteminfos#edit'
  patch 'iteminfos/edit/:id', to: 'iteminfos#edit'

  get 'iteminfos/genre/:id', to: 'iteminfos#genre'

  get 'iteminfos/delete/:id', to: 'iteminfos#delete'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
