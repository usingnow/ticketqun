class CreateApiMigrations < ActiveRecord::Migration
  def change
    create_table :api_migrations do |t|
      t.string :api_owner
      t.datetime :delivered_at
      t.integer :number_of_transaction
      t.integer :number_of_completion
      t.string :migration_ref
      t.string :log_file_name
      t.string :log_file_url

      t.timestamps null: false
    end
  end
end
