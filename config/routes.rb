Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
  	collection { post :import }
  	# collection {post :import}と書き込むことで、resources :usersで作成されるルーティング以外の、usersコントローラーのアクションへのルーティングを追加することができる。
  end
end
