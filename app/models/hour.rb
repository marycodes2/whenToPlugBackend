class Hour < ApplicationRecord
  has_many :visitor_request_hours
  has_many :visitor_requests, through: :visitor_request_hours
end
