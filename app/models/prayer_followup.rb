# == Schema Information
#
# Table name: prayer_followups
#
#  id         :integer          not null, primary key
#  prayer_id  :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PrayerFollowup < ActiveRecord::Base
  attr_accessible :content, :prayer_id
end
