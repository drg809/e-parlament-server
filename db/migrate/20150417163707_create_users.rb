class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :nacionality
      t.string :age
      t.integer :phone
      t.string :password
      t.string :new
      t.string :edit

      t.timestamps
    end
  end
end
