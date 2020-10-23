class Job < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :user
  has_many :notes, dependent: :delete_all, inverse_of: :job
  validates :user, :company_name, :url, :status, presence: true
  validates :status, inclusion: { in: %w(applied not\ applied interviewed offered hired),
    message: '%{value} is not a valid option'}
end
