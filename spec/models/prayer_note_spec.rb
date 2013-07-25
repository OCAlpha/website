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

require 'spec_helper'

describe PrayerNote do
  pending "add some examples to (or delete) #{__FILE__}"
end
