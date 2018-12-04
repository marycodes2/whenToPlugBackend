class VisitorRequestSerializer < ActiveModel::Serializer
  attributes :id, :user, :appliance, :hours, :duration, :efficiency_hours
    def efficiency_hours
      return self.object.find_efficiency_of_appliance
    end
  has_many :visitor_request_hours
  has_many :hours, through: :visitor_request_hours
end
