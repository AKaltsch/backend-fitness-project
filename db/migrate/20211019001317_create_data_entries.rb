class CreateDataEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :data_entries do |t|
      t.integer :sets
      t.integer :reps 
      t.integer :weight
      t.integer :distance
      t.integer :time  
      t.integer :exercise_id

      t.timestamps
    end
  end
end
