class CreateVisitorRequestHours < ActiveRecord::Migration[5.2]
  def change
    create_table :visitor_request_hours do |t|
      t.references :hour, foreign_key: true
      t.references :visitor_request, foreign_key: true

      t.timestamps
    end
  end
end
