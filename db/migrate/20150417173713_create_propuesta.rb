class CreatePropuesta < ActiveRecord::Migration
  def change
    create_table :propuesta do |t|
      t.int :user_id
      t.string :title
      t.string :object
      t.string :finality
      t.int :scope_id
      t.int :subject_id

      t.timestamps
    end
  end
end
