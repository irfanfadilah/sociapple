class Status < ActiveRecord::Base
  # Add ability to liked by User
  acts_as_votable

  # Validations
  validates :content, presence: true

  # Associations
  belongs_to :user
end
