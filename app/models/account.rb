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
    @lastReconciliation = self.reconciliations.last
    balance = 0
    if(@lastReconciliation.nil?)
      
      @deposits = Transfer.where("account_id = ? ", self.id)
      if(@deposits.nil?)
        @deposits = 0
      else
        @deposits.each do |d|
          balance += d.value
        end
      end
  
      @transfers_out = AccountTransfer.where("from_account_id = ?", self.id)
      if(@transfers_out.nil?)
        @transfers_out = 0
      else
        @transfers_out.each do |t|
          balance -= t.amount
        end
      end
  
      @transfers_in = AccountTransfer.where("to_account_id = ?", self.id)
      if(@transfers_in.nil?)
        @transfers_in = 0
      else
        @transfers_in.each do |t|
          balance += t.amount
        end
      end
    else
      balance = @lastReconciliation.amount
      @deposits = Transfer.where("account_id = ? AND created_at = ?", self.id, @lastReconciliation.created_at..Time.now)
      if(@deposits.nil?)
        @deposits = 0
      else
        @deposits.each do |d|
          balance += d.value
        end
      end
  
      @transfers_out = AccountTransfer.where("from_account_id = ? AND created_at = ?", self.id, @lastReconciliation.created_at..Time.now)
      if(@transfers_out.nil?)
        @transfers_out = 0
      else
        @transfers_out.each do |t|
          balance -= t.amount
        end
      end
  
      @transfers_in = AccountTransfer.where("to_account_id = ? AND created_at = ?", self.id, @lastReconciliation.created_at..Time.now)
      if(@transfers_in.nil?)
        @transfers_in = 0
      else
        @transfers_in.each do |t|
          balance += t.amount
        end
      end
    end
  return balance
  end
end
