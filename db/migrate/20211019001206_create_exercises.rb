class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name 
      t.string :description
      t.string :image_url
      t.string :exercise_type  
      t.integer :workout_id
      t.integer :user_id

      t.timestamps
    end
  end
end
