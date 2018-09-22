class AddScoreToScreenshots < ActiveRecord::Migration[5.2]
  def change
    add_column :screenshots, :score, :string
  end
end
