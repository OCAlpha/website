class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.decimal :purchase_amount
      t.integer :office_id
      t.string :note

      t.timestamps
    end
  end
end
