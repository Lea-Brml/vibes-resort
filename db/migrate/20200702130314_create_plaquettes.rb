class CreatePlaquettes < ActiveRecord::Migration[5.2]
  def change
    create_table :plaquettes do |t|
      t.string "email"
      t.string "phone"
      t.string "name"
      t.string "firstname"
      t.timestamps
    end
  end
end
