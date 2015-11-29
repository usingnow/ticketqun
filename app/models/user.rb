class User < ActiveRecord::Base
  has_one :profile
  after_save :create_default_profile
  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  # 允许使用 username（用户名） 或 email 登录
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  protected

    def create_default_profile
      unless self.profile
        p = self.build_profile(email: self.email.to_s)
        p.save(validate: false)
      end
    end
end
