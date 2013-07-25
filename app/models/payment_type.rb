# == Schema Information
#
# Table name: payment_types
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class PaymentType < ActiveRecord::Base
  attr_accessible :name
  
  has_many :payments
  
  validates :name, presence:true
end
