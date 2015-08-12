class User < ActiveRecord::Base
  has_many :skills, dependent: :destroy

  accepts_nested_attributes_for :skills
end
