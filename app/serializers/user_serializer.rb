class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :full_name, :email

  has_many :jobs 
  has_many :reminders

  def full_name
    user = self.object
    "#{user.first_name} #{user.last_name}"
  end

end
