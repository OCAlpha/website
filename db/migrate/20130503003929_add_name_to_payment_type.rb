class AddNameToPaymentType < ActiveRecord::Migration
  def change
    add_column :payment_types, :name, :string
    remove_column :payment_types, :type, :string
  end
end
