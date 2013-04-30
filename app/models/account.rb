# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  attr_accessible :name
  
  has_many :reconciliations, dependent: :destroy
  validates :name, presence:true, length: {maximum: 50}
end
