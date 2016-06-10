class Profile < ActiveRecord::Base
  belongs_to :author
  has_many :mindmaps
  has_many :capsules
  before_save :profile_name


    def profile_name
      @profile_name = "#{first_name} #{last_name}"
    end
end
