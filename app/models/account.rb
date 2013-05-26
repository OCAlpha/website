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
  
  has_many :user_xfers, class_name:'Transfer', foreign_key: 'account_id'
  has_many :acct_xfers_in, class_name: 'Account_transfer', foreign_key: 'to_account_id'
  has_many :acct_xfers_out, class_name: 'Account_transfer', foreign_key: 'from_account_id'
  has_many :reconciliations, dependent: :destroy
  validates :name, presence:true, length: {maximum: 50}
end
