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
  has_many :xfers_out, :class_name => 'AccountTransfer', :foreign_key => "from_account_id"
  has_many :xfers_in, :class_name => 'AccountTransfer', :foreign_key => "to_account_id"
  has_many :reconciliations
  def balance
    
    @lastTotal = 0
    @lastTotal ||= self.reconciliations.last.balance
    if self.reconciliations.last != nil
      @transfers_in = self.xfers_in.where("created_at > ?", self.reconciliations.last[:updated_at])
      @transfers_out = self.xfers_out.where("created_at > ?", self.reconciliations.last[:updated_at])
    else
      @transfers_in = self.xfers_in
      @transfers_out = self.xfers_out
    end
    @transfers_in.each do |xfer|
      @lastTotal += xfer.amount
    end
    @transfers_out.each do |xfer|
      @lastTotal -= xfer.amount
    end
    return @lastTotal
  end
  
end
