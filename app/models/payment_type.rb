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
  attr_accessible :type
  
  belongs_to :payment
  
  validates :type, presence:true
end
