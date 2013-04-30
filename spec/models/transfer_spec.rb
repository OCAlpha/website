# == Schema Information
#
# Table name: transfers
#
#  id              :integer          not null, primary key
#  officer_user_id :integer
#  account_id      :integer
#  value           :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe Transfer do
  pending "add some examples to (or delete) #{__FILE__}"
end
