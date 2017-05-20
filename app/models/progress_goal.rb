class ProgressGoal < ActiveRecord::Base
	belongs_to :result_goals
	has_many :actionable_tasks
end
# I can't make the call actionable_task.progress_goals_id
# I can only make the call: actionable_task.result_goals_id