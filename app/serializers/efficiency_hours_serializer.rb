class EfficiencyHoursSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :visitor_requests
end
