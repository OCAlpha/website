class CreateReconciliations < ActiveRecord::Migration
  def change
    create_table :reconciliations do |t|
      t.decimal :balance, :scale => 2

      t.timestamps
    end
  end
end
