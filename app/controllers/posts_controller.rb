class PostsController < ApplicationController
  before_action :is_authenticated, only: [:new, :create]
  before_action :current_user, only: [:index, :show]


  # def index
  #   @posts = Post.all.order("created_at DESC")
  # end

  def new
  	@post = Post.new
  end

  def create
  	@current_user.posts.create(post_params)
    redirect_to main_path
  end

  def show
    @post = Post.find(params[:id]) 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to main_index_path, :notice => "Your post has been deleted"
  end

  private

  def post_params
  	params.require(:post).permit(:title, :description, :due, :category, :priority)
  end

end
