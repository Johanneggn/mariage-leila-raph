class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :lover
      t.integer :children
      t.boolean :coming

      t.timestamps
    end
  end
end
