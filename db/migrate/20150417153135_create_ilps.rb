class CreateIlps < ActiveRecord::Migration
  def change
    create_table :ilps do |t|
      t.int :user_id
      t.string :title
      t.string :object
      t.string :finality
      t.string :scope
      t.string :subject

      t.timestamps
    end
  end
end
