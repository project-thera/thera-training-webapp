class CreateStages < ActiveRecord::Migration[6.1]
  def change
    create_table :stages do |t|
      # t.belongs_to :exercise, index: true, null: false

      t.string :name, null: false
      t.string :description, null: true
      t.string :label, null: false
      t.string :video_link, null: true

      t.timestamps
    end
  end
end
