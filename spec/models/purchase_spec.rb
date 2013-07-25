# == Schema Information
#
# Table name: purchases
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  purchase_amount   :decimal(, )
#  office_id         :integer
#  note              :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  purchase_location :string(255)
#

require 'spec_helper'

describe Purchase do
  pending "add some examples to (or delete) #{__FILE__}"
end
