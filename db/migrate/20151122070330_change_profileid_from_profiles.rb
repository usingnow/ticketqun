class ChangeProfileidFromProfiles < ActiveRecord::Migration
  def up
  	rename_column :profiles, :profile_id, :profile_snum
  end

  def down
  	rename_column :profiles, :profile_snum, :profile_id
  end
end
