class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.float :duration
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
