# == Schema Information
#
# Table name: purchases
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  purchase_amount   :decimal(, )
#  office_id         :integer
#  note              :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  purchase_location :string(255)
#

class Purchase < ActiveRecord::Base
  attr_accessible :note, :office_id, :purchase_amount, :user_id, :purchase_location, :confirmed
  
  belongs_to :user
  belongs_to :office
  
  validates :office_id, presence: true
  validates :purchase_amount, presence: true
  validates :user_id, presence:true
  validates :purchase_location, presence: true
end
