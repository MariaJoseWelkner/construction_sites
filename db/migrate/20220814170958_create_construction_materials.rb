class CreateConstructionMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :construction_materials do |t|
      t.integer :amount
      t.references :material, null: false, foreign_key: true
      t.references :construction_site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
