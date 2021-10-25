class CreateBenchpresses < ActiveRecord::Migration[6.1]
  def change
    create_table :benchpresses do |t|
      t.integer :weight
      t.integer :user_id

      t.timestamps
    end
  end
end
