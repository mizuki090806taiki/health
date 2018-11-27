class CreateKaunseringuYoyakus < ActiveRecord::Migration[5.1]
  def change
    create_table :kaunseringu_yoyakus do |t|
      t.integer :kaunsering_schedule_id
      t.integer :seito_id
      t.text :memo
      t.string :result

      t.timestamps
    end
  end
end
