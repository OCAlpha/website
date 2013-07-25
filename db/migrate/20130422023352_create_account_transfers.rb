class CreateAccountTransfers < ActiveRecord::Migration
  def change
    create_table :account_transfers do |t|
      t.integer :from_account_id
      t.integer :to_account_id
      t.decimal :amount, :scale =>2

      t.timestamps
    end
  end
end
