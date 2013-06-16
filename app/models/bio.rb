class Bio < ActiveRecord::Base
  attr_accessible :catchphrase, :favorite_breakfast, :favorite_superhero, :favorite_verse, :grow_up, :hometown, :major, :user_id
  belongs_to :user
  
  private
  def assign_bio
    self.user = @current_user
  end
  
end
