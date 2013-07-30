# == Schema Information
#
# Table name: reconciliations
#
#  id         :integer          not null, primary key
#  balance    :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reconciliation < ActiveRecord::Base
  attr_accessible :account_id, :balance
  
  belongs_to :account
  validates :account_id, presence: true
  validates :balance, presence: true
end
