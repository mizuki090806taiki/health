class CreateKaunseringSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :kaunsering_schedules do |t|
      t.datetime :yoyakuzikan
      t.text :memo

      t.timestamps
    end
  end
end
