class ProfilesController < ApplicationController
  before_action :find_profile, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_author!


  def index
  end

  def new
    @profile = current_author.build_profile
  end

  def create
    @profile = current_author.build_profile(profile_params)
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


  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :about_me, :date_of_birth,
                                    :nationality, :zipcode, :state, :sexe)
  end

  def find_profile
    @profile = current_author.profile
  end
end
