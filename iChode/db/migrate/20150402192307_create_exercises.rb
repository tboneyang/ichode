class CreateExercises < ActiveRecord::Migration
  def change
  	drop_table :exercises
    create_table :exercises do |t|
      t.string :name
    end
  end
end
