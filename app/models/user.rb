class User < ActiveRecord::Base
  has_one :profile

  after_save :create_default_profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  protected

    def create_default_profile
      unless self.profile
        p = self.build_profile(email: self.email.to_s)
        p.save(validate: false)
      end
    end
end
