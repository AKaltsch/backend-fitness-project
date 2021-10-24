class CreateSquats < ActiveRecord::Migration[6.1]
  def change
    create_table :squats do |t|
      t.integer :weight
      t.integer :user_id

      t.timestamps
    end
  end
end
