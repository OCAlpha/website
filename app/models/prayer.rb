# == Schema Information
#
# Table name: prayers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  request    :text
#  private    :boolean
#  anonymous  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Prayer < ActiveRecord::Base
  attr_accessible :anonymous, :private, :request, :user_id
  
  belongs_to :user
  has_many :prayer_followups
  has_many :prayer_notes
  
  validates :user_id, presence: true
  validates :request, presence: true
  validates :anonymous, presence: true
  validates :private, presence: true
end
