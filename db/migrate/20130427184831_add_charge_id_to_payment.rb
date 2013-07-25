class AddChargeIdToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :charge_id, :integer
  end
end
