class CreateMusclesworkeds < ActiveRecord::Migration
  def change
    create_table :musclesworkeds do |t|

      t.timestamps null: false
    end
  end
end
