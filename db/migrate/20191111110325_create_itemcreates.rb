class CreateItemcreates < ActiveRecord::Migration[6.0]
  def change
    create_table :itemcreates do |t|
      t.integer :iteminfo_id
      t.integer :createcount
      t.integer :buycount

      t.timestamps
    end
  end
end
