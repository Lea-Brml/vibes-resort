class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string "email"
      t.string "name"
      t.string "firstname"
      t.text "message"
      t.string "phone"
      t.boolean "room"
      t.boolean "suite"
      t.timestamps
    end
  end
end
