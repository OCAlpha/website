class AddConfirmationToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :confirmed, :boolean
  end
end
