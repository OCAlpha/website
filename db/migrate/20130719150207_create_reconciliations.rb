class CreateReconciliations < ActiveRecord::Migration
  def change
    create_table :reconciliations do |t|
      t.integer :account_id
      t.decimal :balance

      t.timestamps
    end
  end
end
