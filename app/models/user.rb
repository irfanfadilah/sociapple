class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Add ability to like Status
  acts_as_voter

  # Validations
  validates :fullname, presence: true

  # Associations
  has_many :statuses, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :replies, dependent: :destroy

  # Callbacks
  before_save :gravatarize
  before_create :generate_username

  def gravatarize
    self.avatar = "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(self.email)}"
  end

  def generate_username(num=nil)
    username = self.fullname.parameterize(".")
    num.nil? ? (num = 1) : (username += ".#{num}")
    User.find_by(username: username).nil? ? (self.username = username) : generate_username(num)
  end
end
