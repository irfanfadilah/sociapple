class Reply < ActiveRecord::Base
  # Validations
  validates :content, presence: true

  # Add ability to liked by User
  acts_as_votable

  # Associations
  belongs_to :user
  belongs_to :comment
end
