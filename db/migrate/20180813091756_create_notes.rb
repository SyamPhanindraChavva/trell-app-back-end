class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.text "title", null: false
      t.text "description", null: false
      t.date "date", null: false
      t.timestamp
    end
  end
end
