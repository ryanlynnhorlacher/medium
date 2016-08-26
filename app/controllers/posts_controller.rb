class PostsController < ApplicationController
	before_action :post, except: [:index, :new, :create]
	before_action :user, except: [:show, :edit, :update, :destroy]

  def index
  	@posts = @user.posts.all
  end

  def show
    @comments = @post.comments.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = current_user.posts.new(post_params)
  	if @post.save
  		redirect_to post_path(@post)
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  	if @post.update(post_params)
  		redirect_to post_path(@post)
  	else
  		render :edit
  	end
  end

  def destroy
  	@post.destroy
  	redirect_to user_posts_path
  end


  private

  def post_params
  	params.require(:post).permit(:title, :content)
  end

  def post
  	@post = Post.find(params[:id])
  end

  def user
  	@user = User.find(params[:user_id])
  end
end










