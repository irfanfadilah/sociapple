class Status < ActiveRecord::Base
  # Validations
  validates :content, presence: true

  # Associations
  belongs_to :user
end
