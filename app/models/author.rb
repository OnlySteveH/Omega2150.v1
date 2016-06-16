class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :author_fullname



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_many :muses, dependent: :destroy
  has_many :capsules, dependent: :destroy
  has_many :mindmaps
  has_many :comments, dependent: :destroy
  has_many :collabs
  accepts_nested_attributes_for :capsules, :mindmaps, :comments, :profile


  def author_fullname
    @fullname = "#{first_name} #{last_name}"
  end
end
