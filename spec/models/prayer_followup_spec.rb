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

require 'spec_helper'

describe PrayerFollowup do
  pending "add some examples to (or delete) #{__FILE__}"
end
