class Comment < ActiveRecord::Base
  # Validations
  validates :content, presence: true

  # Add ability to liked by User
  acts_as_votable

  # Associations
  belongs_to :user
  belongs_to :status
  has_many :replies, dependent: :destroy
end
