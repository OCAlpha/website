# == Schema Information
#
# Table name: account_transfers
#
#  id              :integer          not null, primary key
#  from_account_id :integer
#  to_account_id   :integer
#  amount          :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe AccountTransfer do
  pending "add some examples to (or delete) #{__FILE__}"
end
