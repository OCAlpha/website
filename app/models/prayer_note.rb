# == Schema Information
#
# Table name: prayer_notes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  request_id :integer
#  content    :text
#  anonymous  :boolean
#  public     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PrayerNote < ActiveRecord::Base
  attr_accessible :anonymous, :content, :public, :request_id, :user_id
end
