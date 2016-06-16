class MusesController < ApplicationController
  before_action :find_muse, only: [:show, :edit, :update, :create, :destroy]
  before_action :find_profile, only: [:index, :show]

  def index
    @muses = Muse.all.order('created_at DESC')
  end

  def show
  end

  def new
    @muse = Muse.new
  end

  def create
    @muse = Muse.new(muse_params)
    @muse.author_id = current_author.id
    if @muse.save
      redirect_to @muse, notice: "You have successfully added your muses"
    else
      render "new"
    end
  end


  def edit
  end

  def update
    if @muse.update(muse_params)
      redirect_to @muse, notice: "You have successfully updated your muse"
    else
      render 'edit'
    end
  end


  def destroy
  end

  private

  def find_profile
    @profile = Profile.find_by(params[:id])
  end

  def find_muse
    @muse = Muse.find_by(params[:id])
  end

  def muse_params
    params.require(:muse).permit(:body, :image, :author_id)
  end
end
