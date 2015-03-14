class CreateMuscles < ActiveRecord::Migration
  def change
    create_table :muscles do |t|
      t.belongs_to :bodypart, index:true
      t.string :name

      t.timestamps null: false
    end
  end
end
