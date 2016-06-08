class CommentsController < ApplicationController
  before_action :find_comment, only: [ :new, :show, :edit, :update, :destroy ]


  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

protected

  def find_comment
    @comment = Comment.find_by(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:comment_content, :capsule_id, :author_id)
  end
end
