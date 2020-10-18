class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id
end
