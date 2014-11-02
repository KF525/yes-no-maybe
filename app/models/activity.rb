class Activity < ActiveRecord::Base
  has_many :lists, through: :listactivities
  has_many :listactivities
end
