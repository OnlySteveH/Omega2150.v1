class Comment < ActiveRecord::Base
  belongs_to :capsule
  belongs_to :author
end
