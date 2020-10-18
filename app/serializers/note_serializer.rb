class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :job_id
end
