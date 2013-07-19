class CreatePrayerNotes < ActiveRecord::Migration
  def change
    create_table :prayer_notes do |t|
      t.integer :user_id
      t.integer :request_id
      t.text :content
      t.boolean :anonymous
      t.boolean :public

      t.timestamps
    end
  end
end
