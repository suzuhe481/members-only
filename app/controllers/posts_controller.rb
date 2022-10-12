class PostsController < ApplicationController
  before_action :new
  before_action :create

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # @post.user = current_user

    if @post.save
      redirect_to new_post_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.permit(:body)
  end
end
