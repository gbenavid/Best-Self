class ResultGoal < ActiveRecord::Base
	belongs_to :roadmap
	# belongs_to :user
	has_many :progress_goals
end
