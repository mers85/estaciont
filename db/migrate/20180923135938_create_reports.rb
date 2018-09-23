class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.text :body
      t.integer :user_id
      t.boolean :validated, :default => false
      t.integer :report_type_id

      t.timestamps
    end
  end
end
