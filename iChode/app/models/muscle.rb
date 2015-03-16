# == Schema Information
#
# Table name: muscles
#
#  id          :integer          not null, primary key
#  bodypart_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Muscle < ActiveRecord::Base
	belongs_to :body_part
	has_many :musclesworkeds
	has_many :exercises, through: :musclesworkeds
end
