class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.references :chef, null: false, foreign_key: true
    
      t.timestamps
    end
  end
end
