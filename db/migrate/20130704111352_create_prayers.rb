class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.integer :user_id
      t.text :request
      t.boolean :private
      t.boolean :anonymous

      t.timestamps
    end
  end
end
