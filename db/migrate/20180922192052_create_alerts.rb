class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :class
      t.text :description
      t.boolean :dismissed

      t.timestamps
    end
  end
end
