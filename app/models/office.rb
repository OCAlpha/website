# == Schema Information
#
# Table name: offices
#
#  id         :integer          not null, primary key
#  budget     :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  officer_id :integer
#  email      :string(255)
#  duties     :text
#

class Office < ActiveRecord::Base
  attr_accessible :budget, :title, :officer_id, :duties, :email
  
  belongs_to :officer, class_name: 'User', foreign_key: 'officer_id'
  has_many :charge_types
  has_many :charges, :through => :charge_types
  has_many :payments, :through => :charges
  has_many :purchases
  
  validates :title, presence: true
  validates :budget, presence: true
  
  def officer
    User.find_by_id(self.officer_id)
  end
  def spent
    self.purchases.sum(:purchase_amount)
  end
  def budget_remaining
    self.budget + self.charges.sum(:override_value) - self.spent
  end
end
