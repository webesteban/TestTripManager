class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :plate, unique: true
      t.string :color
      t.integer :year
      t.integer :category
      t.boolean :enabled

      t.timestamps
    end
  end
end
