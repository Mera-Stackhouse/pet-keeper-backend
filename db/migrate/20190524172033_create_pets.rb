class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.date :birthdate
      t.string :breed
      t.string :habits
      t.string :vaccination_dates, array: true, default: []
      t.string :medications, array: true, default: []
      t.string :appointments, array: true, default: []
      t.string :groomings, array: true, default: []
      t.integer :user_id, foreign_key: true
      t.integer :vet_id, foreign_key: true

      t.timestamps
    end
  end
end
