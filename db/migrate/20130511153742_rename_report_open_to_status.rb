class RenameReportOpenToStatus < ActiveRecord::Migration
  def change
    rename_column :reports, :open, :status
  end
end
