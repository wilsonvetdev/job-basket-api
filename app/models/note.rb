class Note < ApplicationRecord
  belongs_to :job
  validates :job, presence: true
  validates :content, presence: true
end
