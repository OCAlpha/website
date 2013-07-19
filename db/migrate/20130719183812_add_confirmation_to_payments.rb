class AddConfirmationToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :confirmed, :boolean
  end
end
