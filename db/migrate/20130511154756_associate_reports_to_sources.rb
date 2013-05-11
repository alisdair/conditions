class AssociateReportsToSources < ActiveRecord::Migration
  def up
    add_column :reports, :source_id, :integer
    remove_column :reports, :source
  end

  def down
    remove_column :reports, :source_id
    add_column :reports, :source, :string
  end
end
