class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.date :birthdate
      t.string :breed
      t.string :habits
      t.string :vaccination_dates, array: true, default: []
      t.string :medications, array: true, default: []
      t.string :appointments, array: true, default: []
      t.string :groomings, array: true, default: []

      t.timestamps
    end
  end
end
