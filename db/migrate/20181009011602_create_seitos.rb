class CreateSeitos < ActiveRecord::Migration[5.1]
  def change
    create_table :seitos do |t|
      t.integer :gakunenn_id
      t.integer :banngou
      t.string :seibetu
      t.string :simei

      t.timestamps
    end
  end
end
