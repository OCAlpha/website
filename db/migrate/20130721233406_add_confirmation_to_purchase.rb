class AddConfirmationToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :confirmed, :boolean, :default => false
  end
end
