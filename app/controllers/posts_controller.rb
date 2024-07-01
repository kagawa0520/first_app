class PostsController < ApplicationController
  def index  # indexアクションを定義した(一覧ページ)
    @posts = Post.all
  end

  def new  # newアクションを定義(新規投稿ページ)

  end

  def create
    # モデル.create(テーブルのカラム名: params[:キー名]) 
    Post.create(content: params[:content])
    redirect_to "/posts"
  end
end
