class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :first_name
      t.string :last_name
      t.string :identification
      t.boolean :enabled

      t.timestamps
    end
  end
end
