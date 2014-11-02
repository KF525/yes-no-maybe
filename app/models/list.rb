class List < ActiveRecord::Base
  belongs_to :user
  has_many :listactivities
  has_many :activities, through: :listactivities
  
end
