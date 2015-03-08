class CreateBodyParts < ActiveRecord::Migration
  def change
    create_table :body_parts do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
