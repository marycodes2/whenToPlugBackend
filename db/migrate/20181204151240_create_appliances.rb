class CreateAppliances < ActiveRecord::Migration[5.2]
  def change
    create_table :appliances do |t|
      t.string :name
      t.integer :load
      t.integer :duration
      t.string :image
      t.timestamps
    end
  end
end
