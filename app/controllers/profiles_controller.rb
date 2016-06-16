class ProfilesController < ApplicationController
  before_action :find_profile, only: [ :show, :edit, :update, :destroy]
  before_action :find_mindmap
  before_action :authenticate_author!


  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.author_id = current_author.id
    if @profile.save
       redirect_to @profile , notice: "You have successfully created a profile"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @profile.update_attributes(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def show
  end

  def destroy
  end

private
  def find_mindmap
    @mindmap = Mindmap.find_by(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :about_me, :date_of_birth,
                                    :nationality, :zipcode, :state, :sexe)
  end

  def find_profile
    @profile = current_author.profile
  end
end
