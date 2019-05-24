class CreateVets < ActiveRecord::Migration[5.2]
  def change
    create_table :vets do |t|
      t.string :name
      t.string :clinic
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
