class PostsController < ApplicationController
  before_action :require_user_logged_in, only: [:edit, :destroy]
  before_action :correct_user, only: [:edit, :destroy]
  
  def index
    @posts = current_user.posts.order(id: :desc).page(params[:page])
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = '投稿しました'
      redirect_to root_url
    else
      @posts = current_user.posts.order(id: :desc).page(params[:page])
      flash.now[:denger] = '投稿できませんでした'
      render :new
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def destroy
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :area, :country, :spot, :first_day, :last_day, :image, :comment)
  end
  
  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    unless @post
    redirect_to root_url
    end
  end

end
