class PostsController < ApplicationController
  before_action :authenticate_user!
  
  # 2-11で追加
  # このActionを編集してください
  def index
    @title = params[:title]
    if @title.present?
      @posts = Post.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Post.all
    end
    render :index
  end
  # 2-10で追加
  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)

    if params[:post][:image]
      @post.image.attach(params[:post][:image])
    end

    if @post.save
      redirect_to index_post_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end
  # 2-12で追加
  def edit
    @post = Post.find(params[:id])
    render :edit
  end 
  
  def update
    @post = Post.find(params[:id])
    if params[:post][:image]
      @post.image.attach(params[:post][:image])
    end
    if @post.update(post_params)
      redirect_to index_post_path, notice: '更新しました'
    else
      render :edit, status: :unprocessable_entity
    end
  end
  #2-12で追加削除指示
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to index_post_path, notice: '削除しました'
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
  # ここまで
end