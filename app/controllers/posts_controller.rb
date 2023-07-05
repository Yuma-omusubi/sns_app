class PostsController < ApplicationController
=begin
before_actionは、コントローラの特定のアクションが実行される前に呼び出されるメソッド（コールバック）を指定します。これにより、共通のロジック（例えば認証や許可）を一元化できます。

:authenticate_user!は、Deviseが提供するメソッドです。これにより、ユーザーがログインしているかどうかをチェックします。ログインしていない場合、ユーザーはログイン画面にリダイレクトされ、ログイン後に元のページに戻るようになります。

=end
  before_action :authenticate_user!
  
  
  def new
    render:new
  end
  
  def index
    render:index
  end
  
  
  def create
    redirect_to new_post_path
    
  end
  
end
