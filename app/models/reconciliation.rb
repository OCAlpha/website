# == Schema Information
#
# Table name: reconciliations
#
#  id         :integer          not null, primary key
#  balance    :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reconciliation < ActiveRecord::Base
  attr_accessible :balance
  
  belongs_to :account
  
  validates :balance, presence:true
end
