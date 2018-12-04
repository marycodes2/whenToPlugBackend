class CreateVisitorRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :visitor_requests do |t|
      t.references :appliance, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
