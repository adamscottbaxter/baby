class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.text :content, null: false, unique: true
      t.datetime :date_spoken, null: false, default: DateTime.now

      t.timestamps null: false
    end
  end
end
