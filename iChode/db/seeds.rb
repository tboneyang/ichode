# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


bodyparts = BodyPart.create([{ name: "shoulders"}, {name: "torso"}, {name: "arms"}, {name: "waist"}, {name: "legs"}])

muscles_list = [
	["traps", "shoulders"],
	["delts", "shoulders"],
	["pecs", "torso"],
	["lats", "torso"],
	["triceps", "arms"],
	["biceps", "arms"],
	["forearms", "arms"],
	["core", "waist"],
	["abs", "waist"],
	["obliques", "waist"],
	["glutes", "legs"],
	["hamstrings", "legs"],
	["quads", "legs"],
	["calves", "legs"]
]

muscles_list.each do |name, part|
	Muscle.create( name: name, body_part: BodyPart.find_by_name(part))
end

e1 = Exercise.create(:name => 'dumbell-shoulder-press')
Musclesworkeds.create(:muscle_id => 1, :exercise_id => 1)
