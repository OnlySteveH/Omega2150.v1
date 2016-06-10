class Collab < ActiveRecord::Base
  belongs_to :author
  belongs_to :capsule
  
end
