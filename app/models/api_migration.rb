class ApiMigration < ActiveRecord::Base
  has_many :profiles

  private

    def self.generate_api_ref
      return "api" + DateTime.current.to_formatted_s(:number)
    end

    # 以下方法实现profile的后台CSV导入。
    # 导入的CSV为有表头，以逗号分隔文本文件，采用UT&-8编码。
    # 本方法先通过手机号码比对用户信息。如果是曾导入过的记录，会记录下本次导入时间和导入内容以供业务比对。
    # 如果是新增手机号码，则在profiles数据库中增加新的记录。

    def self.import(file, api_migration)
      CSV.foreach(file.path, headers: true) do |row|
        # puts row.to_hash
        # puts file.to_s

        profile = Profile.find_by_cellphone(row["cellphone"]) || Profile.new

        if profile.new_record?
          api_migration.profiles.create!(row.to_hash)
        else
          profile.import_log[DateTime.current.to_s(:db)] = row.to_hash.to_s
          profile.save
        end
      end
    end
end
