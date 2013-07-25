class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :hometown
      t.string :favorite_verse
      t.string :major
      t.string :favorite_breakfast
      t.string :favorite_superhero
      t.string :grow_up
      t.string :catchphrase

      t.timestamps
    end
  end
end
