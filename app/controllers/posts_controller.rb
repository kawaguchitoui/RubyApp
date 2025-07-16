# コントローラーの命名規則は、複数形を使用すること
# そもそも、コントローラーは、データベース内のリソースの集合を管理するためのもの
# 複数形にすることで、そのコントローラーが何のリソースに対して働きかけるのか、またリソースの集合を管理していることが分かりやすくなる

# データ　：本のタイトルや著者、出版年といった個々の情報
# リソース：そういったデータのまとまり。本というカテゴリーそのもの

class PostsController < ApplicationController
  # 一覧表示ページを表示するリクエストに対応して動く
  def index
    @posts = Post.all
  end
  # 新規投稿ページを表示するリクエストに対応して動く
  def new
  end
  # データの投稿を行うリクエストに対応して動く
  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end
