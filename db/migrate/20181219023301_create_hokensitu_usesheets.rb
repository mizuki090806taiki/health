class CreateHokensituUsesheets < ActiveRecord::Migration[5.1]
  def change
    create_table :hokensitu_usesheets do |t|
      t.integer :seito_id
      t.datetime :raishitu_time
      t.boolean :bukatu_flg
      t.string :bukatu
      t.string :kyoka
      t.string :kyokatannin
      t.string :naika_riyuu_sonota
      t.string :geka_riyuu_sonota
      t.string :geka_detail_bui
      t.string :geka_detail_time
      t.string :geka_detail_place
      t.text :geka_detail
      t.string :bad_start
      t.integer :bad_jigen
      t.string :taion
      t.string :myakuhaku
      t.string :ketuatu
      t.string :howdo_sonota
      t.datetime :sleep
      t.datetime :wakeup
      t.boolean :good_sleep
      t.boolean :breakfast
      t.boolean :defecation
      t.boolean :worry
      t.string :worry_sonota
      t.datetime :go_class
      t.datetime :go_rest_from
      t.datetime :go_rest_to
      t.integer :go_rest_jigen_from
      t.integer :go_rest_jigen_to
      t.datetime :go_home
      t.string :go_home_tel
      t.datetime :go_hospital
      t.string :go_hospital_name
      t.boolean :go_consultation
      t.text :go_sonota

      t.timestamps
    end
  end
end
