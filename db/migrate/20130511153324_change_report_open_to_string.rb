class ChangeReportOpenToString < ActiveRecord::Migration
  def up
    change_column :reports, :open, :string
  end

  def down
    change_column :reports, :open, :boolean
  end
end
