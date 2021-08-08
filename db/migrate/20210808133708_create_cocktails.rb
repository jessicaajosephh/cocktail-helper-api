class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :image
      t.text :instructions
      t.integer :likes, :default => 0

      t.timestamps
    end
  end
end
