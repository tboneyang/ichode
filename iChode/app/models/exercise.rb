# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exercise < ActiveRecord::Base
	has_many :musclesworkeds
	has_many :muscles, through: :musclesworkeds
end
