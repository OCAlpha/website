# == Schema Information
#
# Table name: account_transfers
#
#  id              :integer          not null, primary key
#  from_account_id :integer
#  to_account_id   :integer
#  amount          :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class AccountTransfer < ActiveRecord::Base
  attr_accessible :amount, :from_account_id, :to_account_id, :note
  belongs_to :xferred_from, :class_name => 'Account', :foreign_key => 'from_account_id'
  belongs_to :xferred_to, :class_name => 'Account', :foreign_key => 'to_account_id'
  
  
end
