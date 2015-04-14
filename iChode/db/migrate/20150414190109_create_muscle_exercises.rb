class CreateMuscleExercises < ActiveRecord::Migration
  def change
    create_table :muscle_exercises do |t|

      t.timestamps null: false
    end
  end
end
