class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string   :last_name_kana,      null: false
      t.string   :first_name_kana,     null: false
      t.string   :phone_number,        null: false
      t.string   :number_of_people,    null: false
      t.integer  :seat,                null: false, default: 0
      t.datetime :datetime,            null: false

      t.timestamps
    end
  end
end
