class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Add ability to like Status
  acts_as_voter

  # Validations
  validates :username, :fullname, presence: true

  # Associations
  has_many :statuses

  # Callbacks
  before_save :gravatarize

  def gravatarize
    self.avatar = "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(self.email)}"
  end
end
