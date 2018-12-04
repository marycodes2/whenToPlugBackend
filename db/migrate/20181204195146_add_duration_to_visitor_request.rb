class AddDurationToVisitorRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :visitor_requests, :duration, :integer
  end
end
