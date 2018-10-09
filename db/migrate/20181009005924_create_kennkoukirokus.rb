class CreateKennkoukirokus < ActiveRecord::Migration[5.1]
  def change
    create_table :kennkoukirokus do |t|
      t.date :hiduke
      t.boolean :kesseki
      t.integer :byouketu_id
      t.string :zikoketu
      t.string :syuttei
      t.string :tikoku_id
      t.string :kibiki
      t.integer :gakunenn_id
      t.integer :seito_id

      t.timestamps
    end
  end
end
