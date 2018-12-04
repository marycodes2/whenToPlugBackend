class UserSerializer < ActiveModel::Serializer
  has_many :visitor_requests
  has_many :appliances, through: :visitor_requests
  attributes :id, :name
end
