class JobSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :url, :status

  has_many :notes
  
end
