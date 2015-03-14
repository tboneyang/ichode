class Exercise < ActiveRecord::Base
	has_many :musclesworkeds
	has_many :muscles, through: :musclesworkeds
end
