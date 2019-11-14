class CreateDiscards < ActiveRecord::Migration[6.0]
  def change
    create_table :discards do |t|
      t.integer :itemcreate_id
      t.integer :discardcount
      t.text :memo

      t.timestamps
    end
  end
end
