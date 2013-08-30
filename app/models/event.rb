class Event < ActiveRecord::Base
  attr_accessible :description, :location, :time, :title
end
