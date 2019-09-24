class PostsController < ApplicationController
  
  def index
    @posts = post.all
  end

  def new
    @post = post.new
  end

  def show
    @post = post.find(params[:id])
  end

  def create
    @post = post.create(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = post.find(params[:id])
  end

  def update
    @post = post.find(params[:id])
    @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    post.destroy(params[:id])
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit!
    
  end
end
