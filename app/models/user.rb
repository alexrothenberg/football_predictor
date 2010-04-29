class User < ActiveRecord::Base
  acts_as_authentic
  has_attached_file :avatar
end
