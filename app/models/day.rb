class Day < ActiveRecord::Base
	belongs_to :week
	has_many :day_tasks
	has_many :tasks, through: :day_tasks
	belongs_to :plan, through: :weeks
	has_many :goals, :as=> :achievable

end
