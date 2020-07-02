class CreatePlaquettes < ActiveRecord::Migration[5.2]
  def change
    create_table :plaquettes do |t|
      t.string "email"
      t.timestamps
    end
  end
end
