class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :set_fullname

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :capsules, dependent: :destroy
  has_many :mindmaps
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :capsules, :mindmaps, :comments

  def set_fullname
    @fullname = "#{first_name} #{last_name}"
  end
end
