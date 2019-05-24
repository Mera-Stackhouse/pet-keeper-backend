class CreateSecondJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pets, :vets do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end
