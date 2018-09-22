class AddStatusToScreenshots < ActiveRecord::Migration[5.2]
  def change
    add_column :screenshots, :status, :integer, default: 0, null: false
  end
end
