class Capsule < ActiveRecord::Base
  belongs_to :author
  has_many :mindmaps, dependent: :destroy
  accepts_nested_attributes_for :mindmaps
end
