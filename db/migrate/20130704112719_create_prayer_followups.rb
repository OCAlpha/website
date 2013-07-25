class CreatePrayerFollowups < ActiveRecord::Migration
  def change
    create_table :prayer_followups do |t|
      t.integer :prayer_id
      t.text :content

      t.timestamps
    end
  end
end
