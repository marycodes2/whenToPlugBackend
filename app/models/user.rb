class User < ApplicationRecord
  has_many :visitor_requests
  has_many :appliances, through: :visitor_requests
end
