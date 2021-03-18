class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.integer :number, index: true, unique: true, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
