class DataBaseSnapshot < ActiveRecord::Base
  include ApplicationHelper

  attr_accessible :notice

  after_commit :create_snap

  private

  def create_snap
     export_to_db
     ActiveRecord::Base.logger.info("[DataBaseSnapshot] create_snap")

  end

end
