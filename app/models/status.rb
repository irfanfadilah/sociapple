class Status < ActiveRecord::Base
  # Pagination
  paginates_per 10

  # Track activities
  include PublicActivity::Common

  # Add ability to liked by User
  acts_as_votable

  # Validations
  validates :content, presence: true

  # Associations
  belongs_to :user
  has_many :comments, dependent: :destroy
end
