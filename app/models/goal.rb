class Goal < ActiveRecord::Base
	belongs_to :achievable, polymorphic: true
end
