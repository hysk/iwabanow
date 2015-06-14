class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :note
      t.integer :area_code
      t.integer :user_id

      t.timestamps
    end
  end
end
