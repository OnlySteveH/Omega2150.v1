class CollabsController < ApplicationController
  before_action :find_collab, only: [:new, :show, :create, :update, :destroy]
  before_action :find_author, only: [:show]
  before_action :find_capsule, only: [:show]


  def new
    @collab = Collab.new
  end

  def create
    @collab = Collab.new(collab_params)
    if @collab.save
      redirect_to @collab, notice: "Congratulation you have updated the profile field"
    else
      render 'new'
    end
  end

  def show
  end

  private
  def find_author
    @author = Author.find_by(params[:id])
  end

  def find_capsule
    @capsule = Capsule.find_by(params[:id])
  end

  def find_collab
    @collab = Collab.find_by(params[:id])
  end

  def collab_params
    params.require(:collab).permit(:capsule_id, :author_id)
  end
end
