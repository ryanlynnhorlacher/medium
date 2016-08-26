class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :post, except: [:edit, :update, :destroy]
  before_action :comment, except: [:new, :create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = @post.id
    if @comment.save
      redirect_to user_posts_path(@post.user_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

  def post
    @post = Post.find(params[:post_id])
  end

  def comment
    @comment = Comment.find(params[:id])
  end
end
