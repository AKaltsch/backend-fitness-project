class CreateHikes < ActiveRecord::Migration[6.1]
  def change
    create_table :hikes do |t|
      t.string :title
      t.text :description
      t.string :lat 
      t.string :lng 
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
