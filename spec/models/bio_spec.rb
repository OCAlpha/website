# == Schema Information
#
# Table name: bios
#
#  id                 :integer          not null, primary key
#  hometown           :string(255)
#  favorite_verse     :string(255)
#  major              :string(255)
#  favorite_breakfast :string(255)
#  favorite_superhero :string(255)
#  grow_up            :string(255)
#  catchphrase        :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#

require 'spec_helper'

describe Bio do
  pending "add some examples to (or delete) #{__FILE__}"
end
