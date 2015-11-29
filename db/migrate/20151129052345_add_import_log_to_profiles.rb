class AddImportLogToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :import_log, :text
  end
end
