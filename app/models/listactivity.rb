class Listactivity < ActiveRecord::Base
  belongs_to :activity
  belongs_to :list
end
