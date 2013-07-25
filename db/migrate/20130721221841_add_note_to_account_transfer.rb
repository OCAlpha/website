class AddNoteToAccountTransfer < ActiveRecord::Migration
  def change
    add_column :account_transfers, :note, :string
  end
end
