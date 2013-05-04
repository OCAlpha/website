# == Schema Information
#
# Table name: payment_types
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PaymentType < ActiveRecord::Base
  attr_accessible :name
  
  has_many :payments
  
  validates :name, presence:true
end
