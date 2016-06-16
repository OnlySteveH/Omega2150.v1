class CapsulesController < ApplicationController

  before_action :find_capsule, only:[:index, :show, :edit, :update, :destroy]
  before_action :find_mindmap, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_author!

  def index
    @capsules = Capsule.all.order('created_at DESC')
  end

  def new
    @capsule = Capsule.new
  end

  def create
    @capsule = Capsule.new(capsule_params)
    @capsule.author_id = current_author.id
    @capsule.profile_id = current_author.profile.id # Check with Steve if i should set this equal to current_author.profile.id
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
    @capsule.destroy
    redirect_to root_path
  end

  private


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
