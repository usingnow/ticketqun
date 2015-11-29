class AddConfirmableToDevise < ActiveRecord::Migration
  # Note: You can't use change, as Employee.update_all will fail in the down migration
  def up
    add_column :employees, :confirmation_token, :string
    add_column :employees, :confirmed_at, :datetime
    add_column :employees, :confirmation_sent_at, :datetime
    # add_column :employees, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :employees, :confirmation_token, unique: true
    # Employee.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # employees as confirmed, do the following
    execute("UPDATE employees SET confirmed_at = NOW()")
    # All existing Employee accounts should be able to log in after this.
    # Remind: Rails using SQLite as default. And SQLite has no such function :NOW.
    # Use :date('now') instead of :NOW when using SQLite.
    # => execute("UPDATE employees SET confirmed_at = date('now')")
    # Or => Employee.all.update_all confirmed_at: Time.now
  end

  def down
    remove_columns :employees, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :employees, :unconfirmed_email # Only if using reconfirmable
  end
end