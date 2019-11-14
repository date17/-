class CreateIteminfos < ActiveRecord::Migration[6.0]
  def change
    create_table :iteminfos do |t|
      t.text :name
      t.text :path
      t.integer :itemtime
      t.integer :genre_id

      t.timestamps
    end
  end
end
