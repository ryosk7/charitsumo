class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path(@post)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @post = Post.update(post_params)
      redirect_to posts_path(@post)
    else
      render edit_post_path(@post)
    end
  end

  def destroy
    @post = Post.destroy
    redirect_to posts_path
  end

  private

    def post_params
      params.require(:post).permit(:content, :title, :youtube_url)
    end


end
