class ApplianceSerializer < ActiveModel::Serializer
    attributes :id, :name, :load, :duration, :image
    has_many :visitor_requests
    has_many :users, through: :visitor_requests
end
