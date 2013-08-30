class CreateEventSignups < ActiveRecord::Migration
  def change
    create_table :event_signups do |t|
      t.integer :event_id
      t.string :name
      t.integer :studentID

      t.timestamps
    end
  end
end
