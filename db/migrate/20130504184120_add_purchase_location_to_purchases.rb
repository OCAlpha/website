class AddPurchaseLocationToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :purchase_location, :string
  end
end
