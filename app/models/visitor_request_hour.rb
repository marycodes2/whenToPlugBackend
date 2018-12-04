class VisitorRequestHour < ApplicationRecord
  belongs_to :hour
  belongs_to :visitor_request
end
