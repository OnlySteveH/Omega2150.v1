class Muse < ActiveRecord::Base
  belongs_to :author
  has_attached_file :image, styles: { medium: '160x160>', large:'300x300'}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
