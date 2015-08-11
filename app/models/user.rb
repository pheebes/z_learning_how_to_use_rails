class User < ActiveRecord::Base
  has_many :skills, dependent: :destroy
end
