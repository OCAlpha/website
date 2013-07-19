# == Schema Information
#
# Table name: transfers
#
#  id              :integer          not null, primary key
#  officer_user_id :integer
#  account_id      :integer
#  value           :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Transfer < ActiveRecord::Base
  attr_accessible :account_id, :user, :value
  belongs_to :account
  belongs_to :user, class_name: 'User', foreign_key: 'officer_user_id'
  
  validates :account_id, presence:true
  validates :officer_user_id, presence:true
  validates :value, presence:true
end
