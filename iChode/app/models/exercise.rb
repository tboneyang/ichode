# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exercise < ActiveRecord::Base
	has_many :muscle_exercises
	has_many :muscles, through: :muscle_exercises
end
