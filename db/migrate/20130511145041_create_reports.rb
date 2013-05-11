class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :source
      t.boolean :open
      t.string :weather

      t.timestamps
    end
  end
end
