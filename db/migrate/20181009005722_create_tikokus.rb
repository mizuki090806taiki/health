class CreateTikokus < ActiveRecord::Migration[5.1]
  def change
    create_table :tikokus do |t|
      t.string :riyuu

      t.timestamps
    end
  end
end
