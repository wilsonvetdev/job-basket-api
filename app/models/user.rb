class User < ApplicationRecord
    has_secure_password
    has_many :jobs, dependent: :delete_all, inverse_of: :user
    has_many :reminders, dependent: :delete_all, inverse_of: :user
    has_many :notes, through: :jobs
    validates :first_name, :last_name, :email, :password, presence: true
    validates :email, uniqueness: true
    validates :password, length: { 6..20 }

    def full_name
        user = self
        "#{user.first_name.capitalize} #{user.last_name.capitalize}"
    end

end
