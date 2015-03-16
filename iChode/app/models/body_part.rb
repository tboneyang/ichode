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


	def new
		@body_part = Body_part.new
	end

	#dont need to worry about new since only 5 body parts set for app
	#dont worry about create
	#dont worry about destroy
	#dont worry about edit


	#list all blocks
	def index
		@body_parts = Body_part.all
	end

	def show 
		@body_part = Body_part.find(params[:id])
	end

	private
		def body_part_params
			params.require(:body_part).permit(:name)
		end
		

	
end
