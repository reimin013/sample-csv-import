class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.save
  	redirect_to posts_path
  end

  def import
	Post.import(params[:file])
	redirect_to posts_path
  end

private
  def post_params
  	params.require(:post).permit(:category_large, :category_small, :logo)
  end
end
