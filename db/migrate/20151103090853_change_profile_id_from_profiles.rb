class ChangeProfileIdFromProfiles < ActiveRecord::Migration
  def up
  	change_column :profiles, :profile_id, :string
  end

  def down
  	change_column :profiles, :profile_id, :integer
  end
end
