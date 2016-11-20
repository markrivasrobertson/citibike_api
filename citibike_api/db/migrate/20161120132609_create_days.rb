class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.string :date
      t.integer :daily_rides
      t.integer :total_rides

      t.timestamps
    end
  end
end
