class User < ApplicationRecord
    has_secure_password
    has_many :jobs, dependent: :delete_all
    has_many :reminders, dependent: :delete_all
    has_many :notes, through: :jobs
end
