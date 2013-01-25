class DataBaseSnapshot < ActiveRecord::Base
  include ApplicationHelper

  attr_accessible :notice

  before_create :create_snap

  private

  def create_snap
     export_to_db
     ActiveRecord::Base.logger.info("[DataBaseSnapshot] create_snap")

  end

end
