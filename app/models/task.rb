class Task < ActiveRecord::Base
	has_many :day_tasks
	has_many :days, through: :day_tasks
	
end
