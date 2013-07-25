# == Schema Information
#
# Table name: payments
#
#  id                   :integer          not null, primary key
#  paid_by_user_id      :integer
#  collected_by_user_id :integer
#  amount_paid          :decimal(, )
#  notes                :string(255)
#  reconciled           :boolean          default(FALSE)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  charge_id            :integer
#

require 'spec_helper'

describe Payment do
  pending "add some examples to (or delete) #{__FILE__}"
end
