class Week < ActiveRecord::Base
	belongs_to :plan
	has_many :days
	has_many :goals, :as=> :achievable

end
