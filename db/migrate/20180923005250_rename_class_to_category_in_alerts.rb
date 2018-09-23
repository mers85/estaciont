class RenameClassToCategoryInAlerts < ActiveRecord::Migration[5.2]
  def change
    rename_column :alerts, :class, :category
  end
end
