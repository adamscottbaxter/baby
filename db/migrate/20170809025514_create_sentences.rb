class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.text :content, null: false
      t.datetime :date_spoken, null: false

      t.timestamps null: false
    end
    add_index :sentences, :content, unique: true, length: 10
  end
end
