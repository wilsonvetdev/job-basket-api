class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email

  has_many :jobs 
  has_many :reminders

end
