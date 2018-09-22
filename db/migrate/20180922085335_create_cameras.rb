class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.string :name
      t.integer :station_id
      t.string :streaming_url

      t.timestamps
    end
  end
end
