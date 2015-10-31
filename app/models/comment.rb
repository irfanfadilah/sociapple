class Comment < ActiveRecord::Base
  # Validations
  validates :content, presence: true

  # Associations
  belongs_to :user
  belongs_to :status
  has_many :replies, dependent: :destroy
end
