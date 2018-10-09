class CreateByouketus < ActiveRecord::Migration[5.1]
  def change
    create_table :byouketus do |t|
      t.string :riyuu

      t.timestamps
    end
  end
end
