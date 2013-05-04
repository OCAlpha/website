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
#

class Office < ActiveRecord::Base
  attr_accessible :budget, :title, :officer_id
  
  belongs_to :officer, class_name: 'User', foreign_key: 'officer_id'
  has_many :charge_types
  has_many :charges, :through => :charge_types
  has_many :payments, :through => :charges
  
  validates :title, presence: true
  validates :budget, presence: true
  
  def spent

  end
end
