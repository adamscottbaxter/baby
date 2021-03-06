class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.references :sentence, foreign_key: true
      t.text :content, null: false
      t.datetime :date_spoken, null: false

      t.timestamps null: false
    end
    add_index :words, :content, unique: true, length: 10
  end
end
