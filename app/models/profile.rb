require "csv"

class Profile < ActiveRecord::Base
  belongs_to :user

  private
    def self.import(file)
      CSV.foreach(file.path, headers: true) do |row|
        # puts row.to_hash

        Profile.create! row.to_hash
      end
    end
end
