class EventCategory < ActiveRecord::Base
  attr_accessible :category
  
  validates :category, presence: true
end
