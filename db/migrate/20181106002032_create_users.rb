class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :banngou
      t.string :password_digest
      t.string :remember_token
      t.integer :kengen

      t.timestamps
    end
  end
end
