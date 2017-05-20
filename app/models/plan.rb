class Plan < ActiveRecord::Base
	belongs_to :user
	has_many :weeks
	has_many :days, through: :weeks
	has_many :goals, :as=> :achievable

end
