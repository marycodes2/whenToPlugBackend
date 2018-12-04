class Appliance < ApplicationRecord
  has_many :visitor_requests
  has_many :users, through: :visitor_requests
end
