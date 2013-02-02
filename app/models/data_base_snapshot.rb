class DataBaseSnapshot < ActiveRecord::Base
  include ApplicationHelper

  attr_accessible :notice

  before_save :on_create
  after_commit :create_snap
  before_destroy :on_destroy

  private

    def generete_snap_name
      "db_" + Time.now.to_s.gsub(/[^\d]/i, "") + ".sqlite3"
    end

    def on_create
      if new_record?
        @was_a_new_record = true
        write_attribute :snap_file, generete_snap_name
        ActiveRecord::Base.logger.info("[DataBaseSnapshot] on_create")
      end
    end

    def create_snap
      if @was_a_new_record
        export_to_db attributes["snap_file"]
        ActiveRecord::Base.logger.info("[DataBaseSnapshot] create_snap")
      end
    end

    def on_destroy
      if snap = attributes["snap_file"]
        delete_db snap
      end
    end

end
