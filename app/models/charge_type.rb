# == Schema Information
#
# Table name: charge_types
#
#  id         :integer          not null, primary key
#  category   :string(255)
#  value      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  office_id  :integer
#

class ChargeType < ActiveRecord::Base
  attr_accessible :category, :value, :office_id
  
  has_many :charges
  belongs_to :office
  validates :category, presence: true
  validates :value, presence:true
end
