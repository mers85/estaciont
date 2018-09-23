class AddScreenshotIdToAlerts < ActiveRecord::Migration[5.2]
  def change
    add_column :alerts, :screenshot_id, :integer    
  end
end
