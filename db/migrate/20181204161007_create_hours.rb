class CreateHours < ActiveRecord::Migration[5.2]
  def change
    create_table :hours do |t|
      t.string :period
      t.integer :efficiency

      t.timestamps
    end
  end
end
