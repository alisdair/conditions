class AddWinterGreensFieldsToReport < ActiveRecord::Migration
  def change
    add_column :reports, :greens, :string
    add_column :reports, :reason, :string
  end
end
