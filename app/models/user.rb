class User < ActiveRecord::Base
  rolify :role_cname => 'Admin'
  rolify

  after_create :assign_default_role
  def assign_default_role
    add_role(:reviewer)
  end
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body
end
