class Reply < ActiveRecord::Base
  # Validations
  validates :content, presence: true

  # Associations
  belongs_to :user
  belongs_to :comment
end
