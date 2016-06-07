class CapsulesController < ApplicationController
  before_action :find_capsule, only:[ :show, :edit, :update, :destroy]
  before_action :authenticate_author!

  def index
    @capsule = Capsule.find_by(params[:id])
    @capsules = Capsule.all.order('created_at DESC')
  end

  def new
    @capsule = current_author.capsules.build
  end

  def create
    @capsule = current_author.capsules.build(capsule_params)
    if @capsule.save
      redirect_to @capsule , notice: " Your Capsule was successfully created"
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

  private

  def find_capsule
    @capsule = Capsule.find(params[:id])
  end

  def capsule_params
    params.require(:capsule).permit(:title, :about, :purpose)
  end
end
