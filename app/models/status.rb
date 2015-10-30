class Status < ActiveRecord::Base
  # Track activities
  include PublicActivity::Common

  # Add ability to liked by User
  acts_as_votable

  # Validations
  validates :content, presence: true

  # Associations
  belongs_to :user
  has_many :comments
end
