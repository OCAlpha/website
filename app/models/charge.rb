# == Schema Information
#
# Table name: charges
#
#  id             :integer          not null, primary key
#  office_id      :integer
#  user_id        :integer
#  charge_type_id :integer
#  override_value :decimal(, )
#  reconciled     :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Charge < ActiveRecord::Base
  attr_accessible :override_value, :reconciled, :user_id, :charge_type_id, :office_id
  
  before_create :setup_charge
  belongs_to :charge_type
  belongs_to :office
  belongs_to :user
  has_many :payments
  validates :user, presence: true
  validates :charge_type, presence: true
  
  private
  def setup_charge
    self.reconciled = false
    self.office = charge_type.office
    self.override_value = charge_type.value unless override_value != 0
  end
  def validate_charge
    self.office = charge_type.office
    self.override_value = charge_type.value unless override_value != 0
  end
end
