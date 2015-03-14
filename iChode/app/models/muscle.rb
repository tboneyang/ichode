class Muscle < ActiveRecord::Base
	belongs_to :bodypart
	has_many :musclesworkeds
	has_many :exercises, through: :musclesworkeds
end
