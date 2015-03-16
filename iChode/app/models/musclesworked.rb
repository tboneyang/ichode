# == Schema Information
#
# Table name: musclesworkeds
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Musclesworked < ActiveRecord::Base
	belongs_to :muscle
	belongs_to :exercise
end
