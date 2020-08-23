class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.string :sex
      t.boolean :adoptable
      t.string :shelters_id

      t.timestamps
    end
  end
end
