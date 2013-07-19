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

class Bio < ActiveRecord::Base
  attr_accessible :catchphrase, :favorite_breakfast, :favorite_superhero, :favorite_verse, :grow_up, :hometown, :major, :user_id
  belongs_to :user
  
  private
  def assign_bio
    self.user = @current_user
  end
  
end
