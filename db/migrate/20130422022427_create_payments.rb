class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :paid_by_user_id
      t.integer :collected_by_user_id
      t.decimal :amount_paid, :scale => 2
      t.string :notes
      t.boolean :reconciled, default: false

      t.timestamps
    end
  end
end
