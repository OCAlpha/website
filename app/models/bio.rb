class Bio < ActiveRecord::Base
  attr_accessible :catchphrase, :favorite_breakfast, :favorite_superhero, :favorite_verse, :grow_up, :hometown, :major
  belongs_to :user
  
end
