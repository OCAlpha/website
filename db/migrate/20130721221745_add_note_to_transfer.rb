class AddNoteToTransfer < ActiveRecord::Migration
  def change
    add_column :transfers, :note, :string
  end
end
