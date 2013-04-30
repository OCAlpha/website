# == Schema Information
#
# Table name: charge_types
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  value      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ChargeType < ActiveRecord::Base
  attr_accessible :category, :value
  
  belongs_to :charge
  belongs_to :office
  validates :category, presence: true
  validates :value, presence:true
end
