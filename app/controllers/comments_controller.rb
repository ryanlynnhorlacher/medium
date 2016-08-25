class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :edit, :destroy]
	
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
  	params.require(:comment).permit(:content)
  end
end
