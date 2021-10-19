class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name 
      t.string :workout_type  

      t.timestamps
    end
  end
end
