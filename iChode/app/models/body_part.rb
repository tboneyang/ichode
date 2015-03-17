# == Schema Information
#
# Table name: body_parts
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BodyPart < ActiveRecord::Base
	has_many :muscles, dependent: :destroy
	
end
