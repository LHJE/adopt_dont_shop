class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :title
      t.integer :number_of_dogs

      t.timestamps
    end
  end
end
