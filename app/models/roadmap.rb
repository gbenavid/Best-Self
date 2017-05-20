class Roadmap < ActiveRecord::Base
	belongs_to :user
	has_many :result_goals
	has_many :habbits
	has_many :weeks
end
