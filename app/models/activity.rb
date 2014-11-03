class Activity < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  
  has_many :lists, through: :listactivities
  has_many :listactivities
end
