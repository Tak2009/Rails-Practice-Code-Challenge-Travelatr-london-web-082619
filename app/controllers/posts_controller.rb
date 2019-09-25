class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to posts_path
  end

  def like
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to post_path(@post)

  end

  private

  def post_params
    params.require(:post).permit!
    
  end
end
