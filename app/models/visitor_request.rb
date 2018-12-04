class VisitorRequest < ApplicationRecord
  belongs_to :appliance
  belongs_to :user
  has_many :visitor_request_hours
  has_many :hours, through: :visitor_request_hours


  def find_efficiency_of_appliance
    most_efficient_hours = []
    sorted_array = self.hours.sort_by{|hour| hour[:efficiency]}.reverse

    sorted_array[0, self.duration].each do |hourObj|
      most_efficient_hours << hourObj[:period]
    end

    return most_efficient_hours
  end

end
