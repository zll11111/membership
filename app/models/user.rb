class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         authentication_keys:[:user_name]


  def email_changed?
    false
  end


  #validates :email,presence:true#,uniqueness:  true
  validates :user_name,uniqueness:  true,presence:true
end
