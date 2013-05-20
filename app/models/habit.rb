class Habit < ActiveRecord::Base
  attr_accessible :completed, :description, :name
end
