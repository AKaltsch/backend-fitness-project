class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :profile_pic
      t.string :username 
      t.string :password_digest 
      t.text :bio

      t.timestamps
    end
  end
end
