class AddImageUrlToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :image_url, :string
  end
end
