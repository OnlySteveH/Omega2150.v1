class CapsulesController < ApplicationController

  before_action :find_profile, only: [:show, :create]
  before_action :find_capsule, only:[:show, :edit, :update, :destroy]
  before_action :find_mindmap, only: [ :index, :show, :edit, :update, :destroy]
  before_action :authenticate_author!

  def index
    @capsule = Capsule.find_by(params[:id])
    @capsules = Capsule.all.order('created_at DESC')
  end

  def new
    @capsule = Capsule.new

  end

  def create
    @capsule = Capsule.new(capsule_params)
    if @capsule.save
      redirect_to @capsule , notice:" Your Capsule was successfully created"
    else
     render 'new'
    end
  end

  def edit
  end

  def update
    if @capsule.update(capsule_params)
      redirect_to @capsule , notice: "You have successfully Updated your Capsule"
    else
      render 'edit'
    end
  end

  def show
    @mindmap = @capsule.mindmaps.find_by(params[:id])
  end

  def destroy
  end

  private

  def find_profile
    @profile = current_author.profile
  end

  def find_mindmap
    @mindmap = Mindmap.find_by(params[:id])
  end

  def find_capsule
    @capsule = Capsule.find_by(params[:id])
  end

  def capsule_params
    params.require(:capsule).permit(:title, :about, :purpose, :profile_id,  mindmaps_attributes: [ :src, :src_purpose, :id])
  end
end
