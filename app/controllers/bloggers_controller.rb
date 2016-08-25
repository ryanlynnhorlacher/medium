class BloggersController < ApplicationController
  def index
  end

  def show
  	@blogger = User.find(params[:id])
  end

  def new
  end

  def edit
  end

end
