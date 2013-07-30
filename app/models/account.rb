# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  attr_accessible :name
  has_many :transfers
  has_many :xfers_in, :class_name => 'AccountTransfer', :foreign_key => "from_account_id"
  has_many :xfers_out, :class_name => 'AccountTransfer', :foreign_key => "to_account_id"
  has_many :reconciliations
  def balance
    @lastTotal = self.reconciliations.last
    @transfers = Transfer.where("account_id = ?", self.id)
    "0.00"
  end
  
end
