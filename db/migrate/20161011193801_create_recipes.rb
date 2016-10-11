class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :photo, null: false
      t.string :source_url, null: false
      t.integer :serving_size, null: false
      t.text :ingredients, null: false
      t.text :instructions, null: false
      t.text :labels, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
