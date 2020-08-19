class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :title
      t.integer :length
      t.integer :play_count

      t.timestamps
    end
  end
end
