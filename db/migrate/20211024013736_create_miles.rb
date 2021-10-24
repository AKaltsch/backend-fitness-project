class CreateMiles < ActiveRecord::Migration[6.1]
  def change
    create_table :miles do |t|
      t.string :time
      t.integer :user_id

      t.timestamps
    end
  end
end
