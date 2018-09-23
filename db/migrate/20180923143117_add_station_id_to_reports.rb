class AddStationIdToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :station_id, :integer
  end
end
