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

require 'spec_helper'

describe Prayer do
  pending "add some examples to (or delete) #{__FILE__}"
end
