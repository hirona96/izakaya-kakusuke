class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :evaluation_id, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
