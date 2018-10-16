class CreateGakunenns < ActiveRecord::Migration[5.1]
  def change
    create_table :gakunenns do |t|
      t.integer :gakunenn
      t.integer :kumi
      t.integer :ninnzuu
      t.integer :nenndo

      t.timestamps
    end
  end
end
