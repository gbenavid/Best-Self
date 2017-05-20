class Week < ActiveRecord::Base
	belongs_to :roadmap
	has_many :days
end
