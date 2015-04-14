class CreateExercises < ActiveRecord::Migration
  def change
  	drop table :exercises
    create_table :exercises do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
