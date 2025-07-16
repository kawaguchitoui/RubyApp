# ルーティングとは
# ユーザーのリクエストを適切なプログラムに振り分けるガイドラインのようなもの
# ルーティングによって特定のコントローラーのアクションが実行され、そのアクションのためのビューが描画される

# HTTPメソッドは
# クライアントがサーバーに対してどのようなリクエストを行いたいのかを示す
# get：サーバーからデータを取得する（ウェブページやリソースの表示など）ために使われる
# post：サーバーにデータ（フォームの情報など）を送信し、リソースを作成・更新するために使われる

Rails.application.routes.draw do
  # http://localhost:3000/posts にアクセスされたら、postsコントローラーのindexアクションを実行
  get 'posts', to: 'posts#index'
  # http://localhost:3000/posts/new にアクセスされたら、postsコントローラーのnewアクションを実行
  get 'posts/new', to: 'posts#new'
  # http://localhost:3000/posts にアクセスされたら、postsコントローラーのcreateアクションを実行
  post 'posts', to: 'posts#create'
end