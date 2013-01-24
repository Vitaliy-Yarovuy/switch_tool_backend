class DataBaseSnapshot < ActiveRecord::Base
  attr_accessible :notice

  attr_accessible :snap_file
  has_attached_file :snap_file
end
