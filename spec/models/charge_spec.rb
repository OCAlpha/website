# == Schema Information
#
# Table name: charges
#
#  id             :integer          not null, primary key
#  office_id      :integer
#  user_id        :integer
#  charge_type_id :integer
#  override_value :decimal(, )
#  reconciled     :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe Charge do
  pending "add some examples to (or delete) #{__FILE__}"
end
