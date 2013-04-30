class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.decimal :budget, :scale => 2

      t.timestamps
    end
  end
end
