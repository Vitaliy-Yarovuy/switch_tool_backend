class SnapshotController < ApplicationController
  def index
    snap = DataBaseSnapshot.last
    render :json => snap.to_json
  end
end
