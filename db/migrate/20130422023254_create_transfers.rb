class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :officer_user_id
      t.integer :account_id
      t.decimal :value, :scale => 2

      t.timestamps
    end
  end
end
