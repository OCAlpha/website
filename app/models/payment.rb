# == Schema Information
#
# Table name: payments
#
#  id                   :integer          not null, primary key
#  paid_by_user_id      :integer
#  collected_by_user_id :integer
#  amount_paid          :decimal(, )
#  notes                :string(255)
#  reconciled           :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  charge_id            :integer
#

class Payment < ActiveRecord::Base
  attr_accessible :amount_paid, :notes, :reconciled, :paid_by_user_id, :collected_by_user_id, :payment_type
  #before_create :setup_payment
  
  belongs_to :payment_type
  belongs_to :payer, :class_name => 'User', :foreign_key => 'paid_by_user_id'
  belongs_to :collector, :class_name => 'User', :foreign_key => 'collected_by_user_id'
  belongs_to :charge
  
  validates :amount_paid, presence:true
  validates :notes, length: {maximum: 255}
  #validates :reconciled, presence: true
  #validates :charge_id, presence: true
  validates :paid_by_user_id, presence: true
  validates :collected_by_user_id, presence: true
  
  private
  def setup_payment
    self.reconciled = false
  end
end
