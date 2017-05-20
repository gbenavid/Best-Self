class DayTask < ActiveRecord::Base
	belongs_to :days
	belongs_to :tasks

end
