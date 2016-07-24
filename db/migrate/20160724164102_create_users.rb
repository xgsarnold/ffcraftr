class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :character_name

      t.timestamps null: false
    end
    add_index :users, :email
  end
end
