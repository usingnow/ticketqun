class AddApiMigrationIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :api_migration_id, :integer

    add_index :profiles, :api_migration_id
  end
end
